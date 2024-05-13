#include <stdio.h>
#include <unistd.h>
#include <getopt.h>
#include <stdlib.h>
#include <string.h>
#include <openssl/aes.h>
#include <openssl/sha.h>
#include <openssl/evp.h>
#include <openssl/hmac.h>
#include <signal.h>

#define KEYSIZE 256
#define BUFSIZE 4096

struct hmac_sha256 HMAC_SHA256;

struct option long_opt[] = {
    {"key", 1,  NULL,   0},
    {"in",  1,  NULL,   0},
    {"out", 1,  NULL,   0},
    {"tag", 1,  NULL,   0}
};

char* _mode[3] = {
    "enc",
    "dec",
    "ERROR\n"
};

enum mode{
    enc,
    dec,
    error
};

struct hmac_sha256{
    enum mode mode;

    unsigned char*  in;
    unsigned char*  out;
    unsigned char*  key;
    unsigned char*  tag;
    unsigned char*  hmac;

    unsigned char*  out_file_name;

    unsigned int    len_in;
    unsigned int    len_out;
    unsigned int    len_key;
    unsigned int    len_tag;
    unsigned int    len_hmac;

    FILE*           key_file;
    FILE*           in_file;
    FILE*           out_file;
    FILE*           tag_file;

};

int read_file(const char* filename, unsigned * len, unsigned char** data){
    FILE* file = fopen(filename, "rb");

    if(!file){
        return 0;
    }

    fseek(file, 0, SEEK_END);
    long size = ftell(file);
    rewind(file);

    *data = (unsigned char*)malloc(sizeof(char)*(size+1));
    if(!(*data)){
        return 0;
    }
    size_t read_size = fread(*data, 1, size, file);
    if(read_size != size){
        return 0;
    }

    *len = size;
    fclose(file);

    return 1;
}

int check_arg(int argc, char** argv){
    
    /* Check the argument number */
    if(argc!=10){
        return 2;
    }

    /* Check the mode of operation */
    for(int i=0; i<3; i++){
        if(i==2){
            return 2;
        }
        if(!strcmp(_mode[i], argv[1])){
            HMAC_SHA256.mode = i;
            break;
        }
    }

    /* Open file and read the contents */
    int c, idx;
    opterr = 0;
    while((c=getopt_long_only(argc, argv, "", long_opt, &idx))!=-1){
        if(c=='?'){
            return 2;
        }
        else{
            switch(idx){
                //case 0: key option
                case 0:
                    if(!(HMAC_SHA256.key_file = fopen(optarg, "rb")))
                        return 2;
                    HMAC_SHA256.key = NULL;
                    size_t size;
                    HMAC_SHA256.len_key = getline((char**)&HMAC_SHA256.key, &size, HMAC_SHA256.key_file);
                    break;
                
                //case 1: in option
                case 1:
                    if(!(read_file(optarg, &HMAC_SHA256.len_in, &HMAC_SHA256.in))){
                        return 2;
                    }
                    HMAC_SHA256.in_file = fopen(optarg, "rb");
                    if(!HMAC_SHA256.in_file){
                        return 2;
                    }
                    break;
                
                //case 2: out option
                case 2:
                    HMAC_SHA256.out_file_name = optarg;
                    HMAC_SHA256.out_file = fopen(HMAC_SHA256.out_file_name, "wb");
                    if(!HMAC_SHA256.out_file){
                        return 2;
                    }
                    break;
                
                // case 3: tag option
                case 3:
                    if(HMAC_SHA256.mode == enc){
                        HMAC_SHA256.tag_file = fopen(optarg, "wb");
                    }
                    else if(HMAC_SHA256.mode == dec){
                        if(!(read_file(optarg, &HMAC_SHA256.len_tag, &HMAC_SHA256.tag))){
                            return 2;
                        }
                    }
                    break;

                // default: error    
                default:
                    return 2;
                    break;
            }
        }
    }

    return 0;

}

int encrypt(FILE* in, FILE* out, unsigned int* len_out, const unsigned char* key, const unsigned char* iv) {
    unsigned char* readbuf = malloc(BUFSIZE);
    unsigned char* writebuf;
    unsigned int BLOCKSIZE;
    EVP_CIPHER_CTX *ctx;
    int out_len;

    ctx = EVP_CIPHER_CTX_new();
    if(!ctx){
        return 2;
    }
    
    if(1!=EVP_CipherInit_ex(ctx, EVP_aes_256_cbc(), NULL, key, iv, 1)){
        EVP_CIPHER_CTX_free(ctx);
        return 2;
    }
    BLOCKSIZE   = EVP_CIPHER_CTX_block_size(ctx);
    if(!(writebuf    = (unsigned char*)malloc(sizeof(unsigned char)*(BUFSIZE + BLOCKSIZE)))){
        return 2;
    }

    while(1){
        int size = fread(readbuf, sizeof(unsigned char), BUFSIZE, in);
        if( 1 != EVP_CipherUpdate(ctx, writebuf, &out_len, readbuf, size)){
            EVP_CIPHER_CTX_free(ctx);
            return 2;
        }
        fwrite(writebuf, sizeof(unsigned char), out_len, out);
        if(size<BUFSIZE)
            break;
        *len_out += out_len;
    }

    if(1 != EVP_CipherFinal_ex(ctx, writebuf, &out_len)){
        EVP_CIPHER_CTX_free(ctx);
        return 2;
    }
    fwrite(writebuf, sizeof(unsigned char), out_len, out);
    *len_out += out_len;

    free(readbuf);
    free(writebuf);
    EVP_CIPHER_CTX_free(ctx);

    return 0;
}


int decrypt(FILE* in, unsigned char** out, unsigned int* len_out, const unsigned char* key, const unsigned char* iv, unsigned int padding) {
    unsigned char* readbuf = malloc(BUFSIZE);
    unsigned char* writebuf;
    unsigned int BLOCKSIZE;
    unsigned int current_size;
    EVP_CIPHER_CTX *ctx;
    int out_len;

    if(*out){
        free(*out);
    }
    *len_out = 0;

    ctx = EVP_CIPHER_CTX_new();
    if(!ctx){
        return 2;
    }

    EVP_CIPHER_CTX_set_padding(ctx, padding);

    if(1 != EVP_DecryptInit_ex(ctx, EVP_aes_256_cbc(), NULL, key, iv)){
        EVP_CIPHER_CTX_free(ctx);
        return 2;
    }
    BLOCKSIZE   = EVP_CIPHER_CTX_block_size(ctx);
    current_size = (BUFSIZE + BLOCKSIZE);
    writebuf    = malloc(current_size);
    *out        = malloc(current_size);

    if(!writebuf || !*out){
        EVP_CIPHER_CTX_free(ctx);
        return 2; 
    }

    while(1){
        int size = fread(readbuf, sizeof(unsigned char), BUFSIZE, in);
        if(1 != EVP_DecryptUpdate(ctx, writebuf, &out_len, readbuf, size)){
            EVP_CIPHER_CTX_free(ctx);
            return 2;
        }
        memcpy(*out+(*len_out), writebuf, out_len);
        *len_out += out_len;
        if(size<BUFSIZE)
            break;
        current_size += BUFSIZE;
        *out = realloc(*out, current_size);
    }


    if(1 != EVP_DecryptFinal(ctx, writebuf, &out_len)){
        EVP_CIPHER_CTX_free(ctx);
        return 2;
    }

    memcpy(*out+(*len_out), writebuf, out_len);
    *len_out += out_len;

    free(readbuf);
    free(writebuf);
    EVP_CIPHER_CTX_free(ctx);

    return 0;
}

int query_request(){
    
    unsigned char* IV = "ShouldBeChangedInPractical";

    switch(HMAC_SHA256.mode){

        case enc:
            return encrypt(HMAC_SHA256.in_file, HMAC_SHA256.out_file, &HMAC_SHA256.len_out, HMAC_SHA256.key, IV);

        case dec:
            if(decrypt(HMAC_SHA256.in_file, &HMAC_SHA256.out, &HMAC_SHA256.len_out, HMAC_SHA256.key, IV, 1)){
                return decrypt(HMAC_SHA256.in_file, &HMAC_SHA256.out, &HMAC_SHA256.len_out, HMAC_SHA256.key, IV, 0);
            }
            return 0;

        default:
            return 2;
    }

    return 0;
}

int compute_hmac(unsigned char** hmac, unsigned int* len_hmac, unsigned char* in, unsigned int len_in, unsigned char* key, unsigned int len_key){
    unsigned int len;

    *hmac = HMAC(EVP_sha256(), key, len_key, in, len_in, NULL, len_hmac);

    return 0;
}

int authenticate(){
    
    switch(HMAC_SHA256.mode){

        case enc:
            compute_hmac(&HMAC_SHA256.hmac, &HMAC_SHA256.len_hmac, HMAC_SHA256.in, HMAC_SHA256.len_in, HMAC_SHA256.key, HMAC_SHA256.len_key);
            return 0;

        case dec:
            compute_hmac(&HMAC_SHA256.hmac, &HMAC_SHA256.len_hmac, HMAC_SHA256.out, HMAC_SHA256.len_out, HMAC_SHA256.key, HMAC_SHA256.len_key);
            return CRYPTO_memcmp(HMAC_SHA256.tag, HMAC_SHA256.hmac, HMAC_SHA256.len_hmac);
        
        default:
            return 2;
    }
}

void write_result(){

    switch(HMAC_SHA256.mode){
        case enc:
            fwrite(HMAC_SHA256.hmac, sizeof(unsigned char), HMAC_SHA256.len_hmac, HMAC_SHA256.tag_file);
            break;

        case dec:
            fwrite(HMAC_SHA256.out, sizeof(unsigned char), HMAC_SHA256.len_out, HMAC_SHA256.out_file);
            break;

        default:
            return;
    }

}

void finalize(){
    if(HMAC_SHA256.key)
        free(HMAC_SHA256.key);
    if(HMAC_SHA256.in)
        free(HMAC_SHA256.in);
    if(HMAC_SHA256.out)
        free(HMAC_SHA256.out);
    if(HMAC_SHA256.tag)
        free(HMAC_SHA256.tag);

    if(HMAC_SHA256.in_file)
        fclose(HMAC_SHA256.in_file);
    if(HMAC_SHA256.out_file)
        fclose(HMAC_SHA256.out_file);
    if(HMAC_SHA256.tag_file)
        fclose(HMAC_SHA256.tag_file);
    
}

int main(int argc, char** argv){

    int fail, verification;

    if(check_arg(argc, argv)){
        printf("ERROR\n");
        return 2;
    }

    if((fail = query_request())){
        if(fail == 1){
            return 1;
        }
        else{
            printf("ERROR\n");
            finalize();
            return 2;
        }
    }

    if(verification = authenticate()){
        printf("VERIFICATION FAILURE\n");
        if(HMAC_SHA256.out_file){
            fclose(HMAC_SHA256.out_file);
            HMAC_SHA256.out_file=NULL;
            remove(HMAC_SHA256.out_file_name);
        }
        finalize();
        return 1;
    }

    write_result();
    finalize();
}
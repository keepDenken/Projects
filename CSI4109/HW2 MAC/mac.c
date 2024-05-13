#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <pwd.h>
#include <sys/stat.h>

#define policy "mac.policy"

char* request_type[]={
    "read",
    "write"
};
typedef enum _REQUEST{
    READ,
    WRITE
}REQUEST;

char* documents[] = {
    "top_secret.data",
    "secret.data",
    "confidential.data",
    "unclassified.data"
};
char* _access[]={
    "TOP_SECRET",
    "SECRET",
    "CONFIDENTIAL",
    "UNCLASSIFIED"
};
typedef enum _ACCESS{
    TOP_SECRET,
    SECRET,
    CONFIDENTIAL,
    UNCLASSIFIED
}ACCESS;


struct mac_info{
    char*   USER;
    char*   DATA;
    char*   OBJ_NAME;
    
    ACCESS  SUB_AUTH;
    ACCESS  OBJ_AUTH;
    REQUEST TYPE;
};

int check_format(char* cmd_line){
    char format[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-.";

    for(int i = 0; i < strlen(cmd_line); i++) {
        if (strchr(format, cmd_line[i]) == NULL)  // Character not allowed
            return 1;        
    }

    return 0;
}

int set_mac_info(struct mac_info* MAC_INFO, char** argv, char* line, struct passwd* pwd){
    
    char* name = strtok(line, ":");
    char* auth = strtok(NULL, "\n");

    MAC_INFO->USER = (char*)malloc(sizeof(char)*strlen(pwd->pw_name));
    strcpy(MAC_INFO->USER, pwd->pw_name);

    for(int i=0;i<2;i++){
        if(!strcmp(request_type[i], argv[1])){
            MAC_INFO->TYPE = i;
            break;
        }
        if(i==1)
            return 1;
    }

    switch(MAC_INFO->TYPE){
        case READ:
            MAC_INFO->OBJ_NAME = (char*)malloc(sizeof(char)*strlen(argv[2]));
            strcpy(MAC_INFO->OBJ_NAME, argv[2]);
            break;
        case WRITE:
            MAC_INFO->OBJ_NAME = (char*)malloc(sizeof(char)*strlen(argv[2]));
            strcpy(MAC_INFO->OBJ_NAME, argv[2]);
            MAC_INFO->DATA = (char*)malloc(sizeof(char)*strlen(argv[3]));
            strcpy(MAC_INFO->DATA, argv[3]);    
            break;
        default:
            return 1;
    }

    for(int i=0;i<4;i++){
        if(!strcmp(_access[i], auth)){
            MAC_INFO->SUB_AUTH = i;
            break; 
        }
        if(i==3)
            return 1;
    }

    for(int i=0;i<4;i++){
        if(!strcmp(documents[i], MAC_INFO->OBJ_NAME)){
            MAC_INFO->OBJ_AUTH = i;
            break;
        }
        if(i==3)
            return 1;
    }

    
    return 0;

}

int final_mac_info(struct mac_info* MAC_INFO){
 
    if(MAC_INFO){
        if(MAC_INFO->USER){
            free(MAC_INFO->USER);
            MAC_INFO->USER=0;
        }

        if(MAC_INFO->OBJ_NAME){
            free(MAC_INFO->OBJ_NAME);
            MAC_INFO->OBJ_NAME=0;
        }

        if(MAC_INFO->DATA){
            free(MAC_INFO->DATA);
            MAC_INFO->DATA=0;
        }
        free(MAC_INFO);
        MAC_INFO = 0;
    }


    return 0;
}

int get_policy(struct passwd* pwd, char** line){
    size_t  len  = 0;
    ssize_t read;
    FILE*   policy_file;

    if((policy_file=fopen(policy, "r"))==NULL){
        return 1;
    }

    while((read = getline(line, &len, policy_file))!=-1){
        
        if(!strncmp(*line, pwd->pw_name, strlen(pwd->pw_name))){
            if(fclose(policy_file))
                return 1;
            return 0;
        }

    }
    
    return 1;
}

int _read(struct mac_info* MAC_INFO){
    char* line = NULL;
    size_t len;
    ssize_t read;
    FILE* obj_file = fopen(MAC_INFO->OBJ_NAME, "r");
    
    if(obj_file==NULL)
        return 1;

    while((read=getline(&line, &len, obj_file))!=-1)
        printf("%s", line);
    printf("\n");

    if(line){
        free(line);
        line = 0;
    }


    if(fclose(obj_file))
        return 1;

    return 0;
}

int _write(struct mac_info* MAC_INFO){
    FILE* obj_file = fopen(MAC_INFO->OBJ_NAME, "a");
    
    if(obj_file==NULL)
        return 1;

    fprintf(obj_file, "%s\n", MAC_INFO->DATA);

    if(fclose(obj_file))
        return 1;

    return 0;
}

int authorize_request(struct mac_info* MAC_INFO){
    switch(MAC_INFO->TYPE){
        
        case READ:
            if(MAC_INFO->SUB_AUTH <= MAC_INFO->OBJ_AUTH){
                if(_read(MAC_INFO))
                    return 1;
            }
            else{
                printf("ACCESS DENIED\n");
            }
            break;
        
        case WRITE:
            if(MAC_INFO->SUB_AUTH >= MAC_INFO->OBJ_AUTH){
                if(_write(MAC_INFO))
                    return 1;
            }
            else{
                printf("ACCESS DENIED\n");
            } 

            break;
        
        default:
            return 1;
    }
    setegid(getgid());
    seteuid(getuid());

    return 0;
}

int write_log(struct mac_info* MAC_INFO){
    char* file_name = (char*)malloc(sizeof(char)*(strlen(MAC_INFO->USER)+4));
    sprintf(file_name, "%s.log", MAC_INFO->USER);

    umask(026);

    FILE* log_file = fopen(file_name, "a+");
    if(log_file==NULL)
        return 1;
    fprintf(log_file, "%s %s\n", request_type[MAC_INFO->TYPE], MAC_INFO->OBJ_NAME);
    
    if(fclose(log_file))
        return 1;

    return 0;
}



int main(int argc, char** argv){

    char* line = NULL;
    struct passwd* pwd;
    struct mac_info* MAC_INFO=(struct mac_info*)malloc(sizeof(struct mac_info));

    /* Check the number of argument */
    if(argc<3 || argc>4){
        printf("ERROR\n");
        return 1;
    }

    /* Check the format of argument */
    for(int i=1; i<argc; i++){
        if(check_format(argv[i])){
            printf("ERROR\n");
            return 1;
        }
    }

    /* Get User information */
    if((pwd=getpwuid(getuid())) == NULL){
        printf("ERROR\n");
        return 1;
    }


    /* Get Policy - Need root Privilege */
    if(get_policy(pwd, &line)){
        printf("ERROR\n");
        return 1;
    }

    /* Set the MAC information */
    if(set_mac_info(MAC_INFO, argv, line, pwd)){
        printf("ERROR\n");
        final_mac_info(MAC_INFO);
        return 1;
    }
    free(line);
    line=0;
    
    /* Authorize and Perform Request - Need root Privilege */
    if(authorize_request(MAC_INFO)){
        printf("ERROR\n");
        final_mac_info(MAC_INFO);
        return 1;
    }

    /* Write Log File - root privilege NOT required */
    if(write_log(MAC_INFO)){
        printf("ERROR\n");
        final_mac_info(MAC_INFO);
    }

    final_mac_info(MAC_INFO);
    return 0;

}
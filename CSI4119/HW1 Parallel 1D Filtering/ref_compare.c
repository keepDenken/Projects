#include <stdio.h>
#include <string.h>

int main(void){
    char ref_str[]= "ATGCGTATGATGTACGGCGTATGATGCGTACGTAGCGTATATGCGTATGATGTACGGCGTATGATGCGTACGTAGCGTATATGCGTATGATGTACGGCGTATGATGCGTACGTAGCGTATGCGTATGATGTACGGCGTATGATGCGTACGTAGCGTATATGCGTATGATGTACGGCGTATGATGCGTACGTAGCGTATA";
    char* query[] = {"ATG", "CGTAT", "TACGGC", "GTAGC", "ATGATG", "CGTACGTAG", "ATAT", "GCGTA", "TATGATG", "GGCGT"};
    int query_len[] = {3, 5, 6, 5, 6, 9, 4, 5, 7, 5};
    int output[10] = {0};
    int output_len = 10;
    char* base;

    memset(output, 0, output_len*sizeof(int));

    for(int i=0; i<output_len; i++){
        base = strchr(ref_str, query[i][0]);
        while(base!=NULL){
            if(!strncmp(base, query[i], query_len[i])){
                output[i]++;
                base = strchr(base+1, query[i][0]);
            }
            else
                base = strchr(base+1, query[i][0]);
        }
    }

    for(int i=0; i<output_len; i++)
        printf("%d\n", output[i]);
    
    return 0;

}
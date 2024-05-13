#include <stdio.h>
#include <string.h>

int main(void){
    char ref_str[]= "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, Lorem ipsum dolor sit amet, consectetur adipiscing elit, Lorem ipsum dolor sit amet, consectetur adipiscing elit.";
    char* query[] = {"Lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipiscing", "elit", "Lorem ipsum", "dolor sit amet", "consectetur adipiscing elit"};
    int query_len[] = {5, 5, 5, 3, 4, 11, 10, 4, 11, 14, 27};
    int output[11] = {0};
    int output_len = 11;
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
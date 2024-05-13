#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>

#define buf_max 160

void parse(char* buf, char del, int cnt, int* flag) {
        int i = 0;
        int j = 0;
        
        cnt = 0;

        while(buf[i]!=0){
        if(buf[i]==del){
            flag[j] = i;
            buf[i] = '\0';
            i++;
            j++;
        }
        else
            i++;
    }
}

int main(void)
{
    int cflag[20] = {0};
    int *pflag;
    int *sflag;

    char buf[buf_max];
    char *argv1[20];
    char *argv2;
    char *cmd = "forktest; grep read README; stressfs; grind";

    int cnt = 0;
    int i = 0;

    //stage1
    strcpy(buf, cmd);
    parse(buf, ';', cnt, cflag);

    argv1[0] = (char**)malloc(sizeof(char)*strlen(buf));
    *argv1[0] = cmd;
    printf("%s\n", *argv1[0]);

    return 0;
}

#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(void)
{
    char *argv[16];
    char *buf[160];
    char *cmd = "forktest; grep riscv README; grind &";
    int i, j=0;

    if(!*cmd) { return 1; }                     // Empty command
    // Skip leading white space(s).
    while(*cmd == ' ') { cmd++; }
    // Remove trailing white space(s).
    for(char *c = cmd+strlen(cmd)-1; *c == ' '; c--) { *c = 0; }

    for(i=0;i<16;i++){
        
        argv[i] = &cmd[j];
        if((cmd[j]==';')|(cmd[j]=='&')){j++;}
        while((cmd[j]!=';')&(cmd[j]!='&')){
            if(cmd[j]==' '){
                j++;
                break;
            }
            j++;
        }
        if(cmd[j]=='\0'){break;}
    }
    printf("%lu\n", strlen(cmd));
}

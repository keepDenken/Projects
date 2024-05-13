#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>

int main(void)
{
    char *argv[16];
    char buf[160];
    char *cmd = "forktest; grep riscv README; grind &";
    int i, j=0;
    int index = 0;
    int temp = 0;

    if(!*cmd) { return 1; }                     // Empty command
    // Skip leading white space(s).
    while(*cmd == ' ') { cmd++; }
    // Remove trailing white space(s).
    for(char *c = cmd+strlen(cmd)-1; *c == ' '; c--) { *c = 0; }

    for(i=0;i<16;i++){
        for(j=temp;j<strlen(cmd);j++)
        {
            if((cmd[j]==';')|(cmd[j]=='&'))
            {
                argv[i] = (char*)malloc(sizeof(char)*(j-index));
                strncpy(argv[i], &cmd[index], j-index-1);
                index = j;
                temp = ++j;

                break;
            }
            else if(cmd[j]==' ')
            {
                argv[i] = (char*)malloc(sizeof(char)*(j-index));
                strncpy(argv[i], &cmd[index], j-index-1);
                index = j;
                temp = j++;
                break;
            }
        }
    }
}

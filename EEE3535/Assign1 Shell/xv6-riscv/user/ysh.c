#include "kernel/types.h"
#include "kernel/fcntl.h"
#include "user/user.h"

#define buf_size    128     // Max length of user input
#define max_args    16      // Max number of arguments

//There is 4 stage to execute the command
//Stage 1: get cmd(command) using readcmd function and call runcmd(cmd)

//Stage 2: runscmd(char* scmd): Parse cmd into scmd(parsed by semicolon) and run scmd
//         At this stage, series(;) and background(&) is handled.
//         fork() is called to maintain the parent process - ysh
//         If there is & at the end of the scmd, don't call wait(), else call wait()

//Stage 3: Parse scmd into pcmd(parsed by pipe) and run pcmd
//         At this stage, pipe(|) is handled.

//Stage 4: Parse pcmd into rcmd and execute runrcmd
//         At this stage, a single command is actually executed by exec.
//         Also, redirection(>) is handeled.

// function related to run command
int runcmd(char *cmd);      // Run a command.
int runscmd(char* scmd);    // Parse command by ';' and run command
void runpcmd(char* pcmd);    // Parse command by '|' and run command
void runrcmd(char* rcmd);    // Parse command by ' ' and '>' and run command

// function related to parsing
int parse(char** dest, char* src, char del); //Parse and Allocate each argument in the point array
int delete(char* src, char del); //Delete cetain delimeter
int isbcmd(char* src); //Whether background command('&') is included in the argument or not

// Parsing is basically done by put '\0' at the position of delimeter.
int isbcmd(char* src){
    if(src[strlen(src)-1]=='&'){ //Assume Background command is only significant at the end of scmd.
        src[strlen(src)-1]='\0';
        return 1; //if there is '&', change '&' to '\0' and return 1
    }
    else return 0; //if not, return 0
}

int delete(char* src, char del){
    int cnt = 0;
    int i = 0;
    while(src[i]!='\0'){
        if(src[i]==del){ //if there is delimeter, change the delimeter to NULL and increase the count
            src[i]='\0';
            cnt++; 
        }
        i++;
    }

    return cnt;
}

int parse(char** dest, char* src, char del){
    char buf[128];
    int cnt = 0;
    int i = 0;
    int flag[16] = {0}; //flag that stores the position of delimeter

    strcpy(buf, src); //copy string to buf
    while(buf[i]!='\0'){
        if(buf[i]==del){ //event that had to be counted
            buf[i] = '\0';
            flag[cnt]=i; //set the cnt(th) flag i
            cnt++; //increase the count
        }
        i++;
    } //parsing complete

    for(i=0;i<=cnt;i++){
        if(i==0){
            dest[i] = (char*)malloc(sizeof(char)*sizeof(buf)); //dynamic allocation for pointer array to point the char array
            strcpy(dest[i], buf); //if the index of argument is 0, just copy
        }
        else{
            dest[i] = (char*)malloc(sizeof(char)*sizeof(&buf[flag[i-1]+1]));
            strcpy(dest[i], &buf[flag[i-1]+1]); //copy the argument using the flag that stores the position of delimeter
        }
    } //append each token into pointer array

    i=0;
    for(i=0;i<=cnt;i++)
    {
        // Skip leading white space(s).
        while(*dest[i] == ' ') { dest[i]++; }
        // Remove trailing white space(s).
        for(char *c = dest[i]+strlen(dest[i])-1; *c == ' '; c--) { *c = 0; }
    } //remove the leading and trailing white space for each arguments.

    return cnt;
}

int runscmd(char* cmd){
    char* sargv[16]={0};
    
    int scnt = parse(sargv, cmd, ';'); //parse cmd into scmd 

    int i = 0;

    for(i=0;i<=scnt;i++){ //while the scmd is null, which means command is end, call run pcmd

        int rc = fork(); //call fork() to maintain the parent process and wait until the current scmd execution is done.
        if(rc<0){fprintf(2, "fork() failed\n"); exit(1);}
        else if(rc>0) //if the process is parent process,
        {
            if((isbcmd(sargv[i])==0)){ //if & doesn't exists, wait until the execution is done.
                wait(0);               //else, keep going
                if(!strcmp(sargv[i], "exit")){return 0;} // if exit command exists, return 0
            }
        }
        else{ //if the process is child process
            isbcmd(sargv[i]);
            runpcmd(sargv[i]);
            exit(0); //exit child process
        }

    }

    return 1;
}

void runpcmd(char* scmd){
    char* pargv[16] = {0};
    int fd[2];
    int rc=0;
    int pcnt = parse(pargv, scmd, '|'); //parse scmd into pcmd by '|'

    if(pcnt==0){
        runrcmd(pargv[0]);
    }

    else{ //if pipe exists
        for(int i=pcnt;i>=0;i--){ 
            if(i==0){ //if pcmd is the last one to be executed. for example if the scmd is A | B | C, it means A
                runrcmd(pargv[i]);
            }
            
            else{
                if(pipe(fd)!=0){fprintf(2, "pipe() failed\n"); exit(1);} //call pipe
                rc = fork(); //call fork()
                if(rc<0){fprintf(2, "fork failed\n"); exit(1);}
                else if(rc>0){ //if current process is parent process, file descriptor should be connected to the read end of pipe
                    close(0);
                    dup(fd[0]);
                    close(fd[0]); close(fd[1]); //connect to the read end of pipe
                    runrcmd(pargv[i]);
                }
                else{ //if current process is child process, filed descriptor should be connected to the write end of pipe
                    close(1);
                    dup(fd[1]);
                    close(fd[0]); close(fd[1]);//connect to the write end of pipe
                    continue;
                }
            }
        }
    }
}

void runrcmd(char* bcmd){
    char* argv[16] = {0};
    char* fargv[16] = {0};
    char rcmd[128];
    char FILENAME[128]; 
    
    strcpy(rcmd, bcmd);
    int rcnt = parse(fargv, rcmd, '>'); //parse by '>'. fargv[0] = command, fargv[1] = file name 
    parse(argv, fargv[0], ' ');  //parse command by ' '
    strcpy(FILENAME, fargv[1]);

    if(strcmp(argv[0], "cd")==0) {          // if the command is cd, call chdir
        if(chdir(argv[1]) < 0) { fprintf(2, "Cannot cd %s\n", argv[1]); } //if chdir failed, print error message
    }

    else{
        if(rcnt==0){exec(argv[0], argv);} //if redirection doesn't exist, execute the command
    
        else{ //else, set the file descriptor
            close(1); //close STDOUT
            int fd_file = open(FILENAME, O_WRONLY|O_CREATE|O_TRUNC); //open file FILENAME
            dup(fd_file); //duplicate to the STDOUT
            exec(argv[0], argv); //execute the command
        }
    }
}


// Read a shell input.
char* readcmd(char *buf) {
    // Read an input from stdin.
    fprintf(1, "$ ");
    memset(buf, 0, buf_size);
    char *cmd = gets(buf, buf_size);
  
    // Chop off the trailing '\n'.
    if(cmd) { cmd[strlen(cmd)-1] = 0; }
  
    return cmd;
}

int main(int argc, char **argv) {
    int fd = 0;
    char *cmd = 0;
    char buf[buf_size];
  
    // Ensure three file descriptors are open.
    while((fd = open("console", O_RDWR)) >= 0) {
        if(fd >= 3) { close(fd); break; }
    }
  
    fprintf(1, "EEE3535 Operating Systems: starting ysh\n");
  
    // Read and run input commands.
    while((cmd = readcmd(buf)) && runcmd(cmd)) ;
  
    fprintf(1, "EEE3535 Operating Systems: closing ysh\n");
    exit(0);
}

// Run a command.
int runcmd(char *cmd) {
    if(!*cmd) { return 1; }                     // Empty command

    // Skip leading white space(s).
    while(*cmd == ' ') { cmd++; }
    // Remove trailing white space(s).
    for(char *c = cmd+strlen(cmd)-1; *c == ' '; c--) { *c = 0; }

    if(!strcmp(cmd, "exit")) { return 0; }      // exit command
    else if(!strncmp(cmd, "cd ", 3)) {          // cd command
        if(chdir(cmd+3) < 0) { fprintf(2, "Cannot cd %s\n", cmd+3); }
    }
    else {
        // EEE3535 Operating Systems
        // Assignment 1: Shell
        if(runscmd(cmd)){return 1;} //if the return of runscmd is 1, return 1 to continue the ysh
        else {return 0;} //else the command means exit, so return 0 to close the ysh
    }
    return 1;
}

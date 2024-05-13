#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(void) {
    int fd[2];
    // Create a pipe. It returns two file descriptors, fd[0] for a read end and fd[1] for a write end.
    if(pipe(fd) != 0) {
        fprintf(stderr, "pipe() failed\n"); exit(1);
    }
    int rc = fork();
    if(rc < 0) {
        fprintf(stderr, "fork() failed\n"); exit(1);
    }
    else if(rc > 0) {
        printf("parent process (pid=%d)\n", getpid());
        close(STDIN_FILENO);
        dup2(fd[0], STDIN_FILENO);
        close(fd[1]);
        // The parent process runs: "wc -l < stdin" 
        char *argv[3] = {"wc", "-l", NULL}; 
        execvp(argv[0], argv);
    }
    else {
        printf("child process (pid=%d)\n", getpid());
        close(STDOUT_FILENO);
        dup2(fd[1], STDOUT_FILENO);
        close(fd[0]);
        // The child process runs: "grep xv6 README > stdout" 
        char *argv[4] = {"grep", "xv6", "README", NULL}; 
        execvp(argv[0], argv);
    }
    
return 0; }

#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"

// A xv6-riscv syscall can take up to six arguments.
#define max_args 6


int is_valid(const char *s) //function for checking the validation of argument
{
  while('0' <= *s && *s <= '9')
    s++;
  
  if(*s<0 || *s>10){ //if s is not right argument format, return 0
    return 0;
  }
  return 1; //else return 1
}

// Print a help message.
void print_help(int argc, char **argv) {
  fprintf(2, "%s <options: pid or S/R/X/Z>%s\n",
             argv[0], argc > 7 ? ": too many args" : "");
}

int main(int argc, char **argv) {
  // Print a help message.
  if(argc > 7) { print_help(argc, argv); exit(1); }

  // Argument vector
  int args[max_args];

  memset(args, 0, max_args * sizeof(int));

  /* Assignment 2: System Call and Process
     Convert the char inputs of argv[] to integers in args[].
     In this skeleton code, args[] is initialized to zeros,
     so technically no arguments are passed to the pstate() syscall. */
     
  if(argc!=1){
    for(int i=1;i<argc;i++){
      if(*argv[i]=='R'){args[i-1]=-3;} //runnable state
      else if(*argv[i]=='S'){args[i-1]=-2;} //sleeping state
      else if(*argv[i]=='X'){args[i-1]=-4;} //execution state
      else if(*argv[i]=='Z'){args[i-1]=-5;} //zombie state
      else{
        if(is_valid(argv[i])) //if argument is valid
        {
          args[i-1] = atoi(argv[i]); //change string into int using atoi
        }
        else //if argument isn't valid
        {
          print_help(argc, argv); //print help message
          exit(0); //exit ps process
        }
      }
    }
  }
  else{ //if there is no argument passed by pstate, set args[0] = -10 for flag
    args[0] = -10;
  }

  // Call the pstate() syscall.
  int ret = pstate(args[0], args[1], args[2], args[3], args[4], args[5]); //call pstate
  if(ret) { fprintf(2, "pstate failed\n"); exit(1); } //if failed, print fail message

  exit(0);
}

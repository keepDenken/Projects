#include "types.h"
#include "riscv.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "spinlock.h"
#include "proc.h"

uint64
sys_exit(void)
{
  int n;
  argint(0, &n);
  exit(n);
  return 0;  // not reached
}

uint64
sys_getpid(void)
{
  return myproc()->pid;
}

uint64
sys_fork(void)
{
  return fork();
}

uint64
sys_wait(void)
{
  uint64 p;
  argaddr(0, &p);
  return wait(p);
}

uint64
sys_sbrk(void)
{
  uint64 addr;
  int n;

  argint(0, &n);
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

uint64
sys_sleep(void)
{
  int n;
  uint ticks0;

  argint(0, &n);
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(killed(myproc())){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

uint64
sys_kill(void)
{
  int pid;

  argint(0, &pid);
  return kill(pid);
}

// return how many clock tick interrupts have occurred
// since start.
uint64
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

uint64
sys_pstate(void)
{
  // EEE3535 Operating Systems
  // Assignment 2: System Call and Process

  uint64 timestamp_end = ticks; //variables for tick
  int time_elapsed = 0; //variable for runtime
  int time[3]={0}; //array for runtime
  int arg[6] = {0}; //array for argument
  char *state[6] = {"UNUSED", "USED", "S", "R", "X", "Z" }; //array for state
  struct proc* init_proc = myproc(); //for process address  

  //Stage 0: print process info tab
  printf("PID\tPPID\tState\tRuntime\tName\n"); //print tab

  
  
  //Stage 1: get address of init process
  for(int i=0;i<6;i++){ //get argument form trapframe
    argint(i, &arg[i]);
  }

  while(init_proc->pid!=1){ //set address of init process
    init_proc = init_proc->parent;
  }


  //Stage 2: Count number of process
  struct proc* current_proc = init_proc; //set current process as init
  int cnt = 0; //number of process

  while(current_proc->state!=UNUSED){ //count number of process
    current_proc++;
    cnt++;
  }

  int flag[cnt]; //flag for process that satisfy the conditions
  
  
  //Stage 3: Set flag for process that represents whether the process satisfies the condition 
  if(arg[0]==-10){ // if there is no argument, set all flag 1
    for(int i=0;i<cnt;i++){flag[i]=1;}
  }
  else{
    for(int i=0;i<cnt;i++){flag[i]=0;} //initialize flag as 0
  }
    
  for(int i=0;i<cnt;i++){ //set flag

    current_proc = init_proc+i; //change current process using index

    for(int j=0;j<6;j++){ //check all the argument
      
      if(arg[j]>=0){ //if argument is pid(positive)
        if(current_proc->pid==arg[j]){flag[i]=1;} //set flag 1 for the current process
      } //if condition is satisfied
      else if(arg[j]<0){ //if argument is state(negative)
        if(current_proc->state==-arg[j]){flag[i]=1;} //set flag 1 for the current process
        } //if condition is satisfied
      }
    current_proc = init_proc; //reset the current process as init process
  }


  //Stage 4: Calculate Run time and print process info that satisfies the condition
  for(int i = 0; i<cnt; i++){ //for runtime check
    current_proc = init_proc+i; //set current process using index
    time_elapsed = timestamp_end - current_proc->timestamp; //calculate time elapsed using tick
    time[0] = time_elapsed/600; //number that represents the min unit
    time[1] = (time_elapsed-time[0]*600)/10; //number that represents the sec unit
    time[2] = (time_elapsed-time[0]*600-time[1]*10); //number that represents the ms unit
    
    if(i==0&&flag[i]==1){ //if pid is 1 and the flag is set by 1, print the process info
      printf("%d\t%d\t%s\t%d:%d.%d\t%s\n", current_proc->pid, 0, 
      state[current_proc->state], time[0], time[1], time[2],current_proc->name);
    }
    
    else if(flag[i]==1){ // if pid isn't 1 and the flag is set by 1, print the process info
      printf("%d\t%d\t%s\t%d:%d.%d\t%s\n", current_proc->pid, current_proc->parent->pid, 
      state[current_proc->state], time[0], time[1], time[2],current_proc->name);
    }
    current_proc = init_proc; //reset current process as init process
  }

  return 0;
}

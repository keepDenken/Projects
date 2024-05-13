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

/* new system calls for threads.*/

uint64
sys_tfork(void){
  uint64 func = 0;
  uint64 arg = 0;

  // Get the argument from tfork()
  argaddr(0, &func);
  argaddr(1, &arg);

  // Execute tfork(proc.c)
  return tfork(func, arg);
}

uint64
sys_twait(void){
  int t = 0;
  uint64 ret = 0;

  // get the argument from twait()
  argint(0, &t);
  argaddr(1, &ret);

  // Execute twait(proc.c)
  return twait(t, ret);
}

uint64
sys_texit(void){
  uint64 ret = 0;

  // get the argument from texit()
  argaddr(0, &ret);

  // Execute texit(proc.c)
  texit(ret);

  return 0;
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
  addr = *(myproc()->sz_ref);
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

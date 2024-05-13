#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"
#include "kernel/param.h"

// Memory allocator by Kernighan and Ritchie,
// The C programming Language, 2nd ed.  Section 8.7.

typedef long Align;

union header {
  struct {
    union header *ptr;
    uint size;
  } s;
  Align x;
};

typedef union header Header;

static Header base;
static Header *freep;

void
freelist(void) { // Show the chain of free blocks.
  int i = 0;
  Header* p = &base;

  printf("Free list:\n");
  if(!freep) { printf("--\n"); return; } // Free list hasn't been created.
  for(p = p->s.ptr; p != &base; p = p->s.ptr) {
    printf("[%d] p = %p, p->s.size = %d bytes, p->s.ptr = %p\n",
           ++i, p, sizeof(Header) * p->s.size, p->s.ptr);
  } printf("\n");
}

void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
}

static Header*
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
  if(p == (char*)-1)
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
  free((void*)(hp + 1));
  return freep;
}

void*
malloc(uint nbytes)
{
  Header *p, *prevp, *bestp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  //if free list doesn't exit, create empty free list.
  if(freep == 0){
    base.s.ptr = freep = prevp = bestp = &base;
    base.s.size = 0;
  }

  //Step 1: Initializing bestp
  for(p=freep->s.ptr; ; prevp = p, p=p->s.ptr){

    if(p==freep){ //if for loop search whole circular linked list,
      if(p->s.size>=nunits){ //if the last free list element satisfy the condition,
        bestp = p; //initialize bestp as p
        break;
      }
      else{
        if((p=morecore(nunits))==0) //if not, there is no free list element satisfying the condition,
          return 0; //call morecore to allocate free memory
        freep = p; //set freep as p = morecore
      }
    }

    else{
      if(p->s.size>=nunits){ //if there is free list element satisfying the condition,
        bestp = p; //initialize bestp
        break;
      }
    }
  }

  for(p=base.s.ptr; p!=&base;prevp=p, p=p->s.ptr){ //search for whole elemnt of free list,
    
    if(bestp->s.size == nunits){ //if bestp exactly fit to nunits,
      prevp = p->s.ptr; //set prevp to next free list element
      return (void*) (bestp + 1); //return
    }

    else{
      if(p->s.size>=nunits){ //if the size of free list element is bigger than acquired size 
        if(p->s.size<bestp->s.size){ //and smaller than(more fit than) current bestp
          bestp = p; //update bestp as p
        }
      }
    }


  }

  //split and allocate the memory.

  bestp->s.size -= nunits;
  bestp += bestp->s.size;
  bestp->s.size = nunits;

  return (void*)(bestp + 1);
}

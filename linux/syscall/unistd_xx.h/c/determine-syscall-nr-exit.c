#include <stdio.h>

#include <unistd.h>
#include <sys/syscall.h>  // SYS_* definitions

int main() {


  #ifdef __i386__
    printf ("__i386__ is defined\n");
  #else
    printf ("__i386__ is not defined\n");
  #endif

  #if defined(__ILP32__)
    printf ("__ILP32__ is defined\n");
  #else
    printf ("__ILP32__ is not defined\n");
  #endif

  printf ("SYS_exit = %d\n", SYS_exit);

  syscall(SYS_exit, 42);

  printf("not reached\n");

}

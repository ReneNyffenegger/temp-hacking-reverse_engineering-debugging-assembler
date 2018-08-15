#include <stdio.h>
#include <sys/syscall.h>

int main() {

  printf ("SYS_exit = %d\n", SYS_exit);

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

}

#include <stdio.h>


int main() {

  unsigned int r_cr0;

  asm volatile (
  //"----------------------\n"
    "push eax              \n"
    "mov  eax, cr0         \n"
    "mov  %0 , eax         \n"
    "pop  eax              \n"
  //"----------------------\n"
    :"=m"(r_cr0)
  );

  printf("cr0 = %d\n", r_cr0);

}

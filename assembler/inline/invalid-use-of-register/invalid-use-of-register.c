#include <stdio.h>
#include <string.h>

#define GLOBAL_VARS

#ifdef GLOBAL_VARS
  unsigned int in_1, in_2, in_3, in_4;
  unsigned int eax;
  unsigned int var_in;
  unsigned int var_out;
#endif

int main() {

#ifndef GLOBAL_VARS
  unsigned int eax, ebx, ecx, edx;
  unsigned int var_in;
  unsigned int var_out;
#endif

  var_in = 35;

  asm volatile (
  //"----------------------\n"
    "mov  eax, %0          \n"
    "add  eax, 7           \n"
    "mov  %1 , eax         \n"
  //"----------------------\n"
    :"=m"(var_in)
    :"m"(var_out)
    :"eax", "ebx", "edx", "ecx"
  );

  printf("7 + %d = %d\n", var_in, var_out);

  asm volatile (
  //"----------------------\n"
    "mov  eax, %4          \n"
    "cpuid                 \n"
    "mov  %0   , eax       \n"
    "mov  %1   , ebx       \n"
    "mov  %2   , ecx       \n"
    "mov  %3   , edx       \n"
  //"----------------------\n"
    :"=m"(in_1), "=m"(in_2), "=m"(in_3),"=m"(in_4)
    :"m"(var_out)
    :"eax", "ebx", "edx", "ecx"
  );

}

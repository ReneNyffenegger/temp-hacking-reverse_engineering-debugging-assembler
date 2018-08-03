#include <stdio.h>

int global_var;

int main() {

  asm volatile (
//      ".intel_syntax noprefix\x0a"
        " mov DWORD PTR global_var[rip], 42\x0a"
//      ".att_syntax           \x0a"
        );

  printf("global_var = %d\n", global_var);

}
  

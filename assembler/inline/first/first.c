#include <stdio.h>

int main() {

  int a=21;
  int b= 7;

  asm volatile (
      ".intel_syntax noprefix;"
       "mov  eax,%0;"  // load eax register with a, being the first factor of the multiplication
       "mov  ebx,2 ;"  // load ebx register with 2, being the second factor of the multiplication
       "mul  ebx   ;"  // execute multiplication (ebx = ebx * eax)
       "mov  %1,eax;"  // return ebx to output.
      ".att_syntax ;"  // Apparently, returning to AT&T syntax is necessary.
    // Output opperands (seperated by a colon)
     : "=r"(b)
    // Input opperands (seperated by a colon)
     : "r" (a)
  );

  printf ("b = %d\n", b);

}

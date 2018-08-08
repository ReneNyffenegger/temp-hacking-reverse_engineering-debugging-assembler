#include <stdio.h>

// int main() {
// 
//   unsigned int ax, ebx, ecx, edx    ;
//                ax= ebx= ecx= edx = 0;
// 
// 
//   asm volatile (
//     ".intel_syntax noprefix;"
//     "cpuid;"
//     "mov %1, eax;"
// //  "mov %2, ebx;"
// //  "mov %3, ecx;"
// //  "mov %4, edx;"
//     ".att_syntax;"
//     : "=m" (eax)
//     :
//     : "eax", "ebx", "ecx", "edx"
//   );
// 
// }


int main(int argc, char **argv) {
  static char vendername[50] = {0};

  __asm__ __volatile__ (
    "movl $0, %%eax    ;"
    "cpuid             ;"
    "movl %%ebx, %0 + 0;"
    "movl %%edx, %0 + 4;"
    "movl %%ecx, %0 + 8;"
    :"=m"(vendername)
    :
    :"eax", "ebx", "edx", "ecx"
  );

  printf("Vendorname: %s\n", vendername);

  return 0;
}

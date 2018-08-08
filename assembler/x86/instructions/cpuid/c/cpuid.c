#include <stdio.h>
#include <string.h>

//
// CPUID can be executed if bit 21 (ID flag) in the EFLAGS register can be cleared and set.
//

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
  static char cpu_vendor[13];

  unsigned int func_no = 0;
  unsigned int eax, ebx, ecx, edx    ;
               eax= ebx= ecx= edx = 0;

  asm volatile ( // Compare https://stackoverflow.com/a/19412944/180275
//  ".intel_syntax noprefix\n"
//  "mov  eax, %1          \n"
    "mov  eax, %4          \n"
    "cpuid                 \n"
//  "mov [%0+0], ebx       \n"
//  "mov [%0+4], edx       \n"
//  "mov [%0+8], ecx       \n"
    "mov  %0   , ebx       \n"
    "mov  %1   , ebx       \n"
    "mov  %2   , edx       \n"
    "mov  %3   , ecx       \n"
//  ".att_syntax           \n"
    :"=m"(eax), "=m"(ebx), "=m"(ecx),"=m"(edx)
    :"m"(func_no)
    :"eax", "ebx", "edx", "ecx"
  );

  memcpy((void*) cpu_vendor  , (void*) &ebx, 4);
  memcpy((void*) cpu_vendor+4, (void*) &edx, 4);
  memcpy((void*) cpu_vendor+8, (void*) &ecx, 4);

  printf("Vendorname: %s\n", cpu_vendor);

  return 0;
}

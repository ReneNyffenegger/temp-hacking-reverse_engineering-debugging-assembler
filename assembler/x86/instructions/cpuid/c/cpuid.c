#include <stdio.h>
#include <string.h>

//
// CPUID can be executed if bit 21 (ID flag) in the EFLAGS register can be cleared and set.
//


// unsigned int eax, ebx, ecx, edx;
unsigned int r_eax, r_ebx, r_ecx, r_edx;
int maxFuncNr = 0;

void cpuid(unsigned int func_no) {

  if (func_no > maxFuncNr) return;

  asm volatile (
  //"----------------------\n"
    "mov  eax, %4          \n"
    "cpuid                 \n"
    "mov  %0   , eax       \n"
    "mov  %1   , ebx       \n"
    "mov  %2   , ecx       \n"
    "mov  %3   , edx       \n"
  //"----------------------\n"
    :"=m"(r_eax), "=m"(r_ebx), "=m"(r_ecx),"=m"(r_edx)
    :"m"(func_no)
    :"eax", "ebx", "edx", "ecx"
  );

//printf("Func no: %d: %8x %8x %8x %8x\n", func_no, eax, ebx, ecx, edx);

}

/* inline */ unsigned int extractBits(unsigned int val, int start, int endIncl) {

  unsigned int bits = (1 << (endIncl-start+1)) - 1;
//printf("bits: %d\n", bits);

  return  (val & (bits << start) ) >> start;

//return (val & (( (1 << (end-start)) - 1) >> start) ) >> start;

}

int main(int argc, char **argv) {
  static char cpu_vendor[13];

//printf("%d\n", extractBits(255, 3, 4));



  cpuid(0);

    maxFuncNr= r_eax;

    printf("Max func nr: %d\n", maxFuncNr);

    memcpy((void*) cpu_vendor  , (void*) &r_ebx, 4); // Note the order of the
    memcpy((void*) cpu_vendor+4, (void*) &r_edx, 4); // registers: ebx, edx, ecx
    memcpy((void*) cpu_vendor+8, (void*) &r_ecx, 4); //
  
    printf("Vendorname : %s\n", cpu_vendor);

  cpuid(1);
    printf("stepping id:     %d\n", extractBits(r_eax,  0,  3));
    printf("Model Nr:        %d\n", extractBits(r_eax,  4,  7));
    printf("Family code:     %d\n", extractBits(r_eax,  8, 11));
    printf("Processor type:  %d\n", extractBits(r_eax, 12, 13));
    printf("Extended model:  %d\n", extractBits(r_eax, 16, 19));
    printf("Extended family: %d\n", extractBits(r_eax, 20, 27));

    printf("\n");

    printf("TSC             : %d\n", extractBits(r_edx,  4, 4)); /* Time stamp counter */
    printf("sysenter/sysexit: %d\n", extractBits(r_edx, 11,11));
    printf("Thermal monitor : %d\n", extractBits(r_edx, 22,22));

    printf("AES             : %d\n", extractBits(r_ecx, 25,25));

  return 0;
}


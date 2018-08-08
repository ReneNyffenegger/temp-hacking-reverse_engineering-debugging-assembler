#include <stdio.h>

int main() {

  int in_1 , in_2, in_3, in_4;
  int out_1;

  in_1 = 7;
  in_2 =10;
  in_3 = 3;
  in_4 =22;

  asm volatile(
      "mov eax, %0 \n"
      "add eax, %1 \n"
      "add eax, %2 \n"
      "add eax, %3 \n"
      "mov %4, eax \n"
      :"=m"(in_1),
       "=m"(in_2),
       "=m"(in_3),
       "=m"(in_4)
      : "m"(out_1)
  );

  printf("%d + %d + %d + %d = %d\n", in_1, in_2, in_3, in_4, out_1);

}

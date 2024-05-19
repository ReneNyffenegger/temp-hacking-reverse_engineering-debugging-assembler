// #include <stdio.h>
#include <sys/syscall.h>
#include <unistd.h>


void write_int(int i) {
   char t[11] = "          \n";  // longest int has 10 digits (2147483647) -- 11 characters are reserved for the null terminated byte

   int pos = 0;
   int sum = i;

   int digit;
 
   do {
   
     digit = sum % 10;
   
      t[9-pos] = '0' + digit;
      pos++;
   
      sum /= 10;
   }
   while (sum);

   long result = syscall(SYS_write, 1, t, 11);
}

#include <stdio.h>

void f(int a) {
   if (a==5) {
      printf("a=5\n");
   }
   else {
      printf("a!=5\n");
   }
}

int main() {

  f(5);
  f(6);
   
}

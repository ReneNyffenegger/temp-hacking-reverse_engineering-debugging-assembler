#include <stdio.h>

void func(const char* str) {
   printf("%s\n", str);
}

int main(int argc, char* argv[]) {

   for (int i=0; i<argc; i++) {
      func(argv[i]);
   }
}

#include <stdio.h>

void func(int nofStrings, char* strings[]) {
   for (int i=0; i<nofStrings; i++) {
      printf("%d: %s\n", i, strings[i]);
   }
}

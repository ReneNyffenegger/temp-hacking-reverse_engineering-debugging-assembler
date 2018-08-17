#include <stdio.h>
#include "symbols_.h"

char hello_world[] = "Hello world";

int main() {

  char* from = hello_world;
  char* to   = greeting;

  while (*from) {
      *to++ = *from++;
  }
  *to = 0;

  printf("Greeting: %s, num: %d\n", greeting, num);

}

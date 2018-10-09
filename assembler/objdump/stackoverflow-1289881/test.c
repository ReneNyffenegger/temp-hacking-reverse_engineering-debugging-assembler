#include <stdio.h>

int the_number() {
  return 42;
}

int main() {

  int i = the_number();

  printf("The number is: %d\n", the_number);

  return 0;
}

#include <stdio.h>
int caller();

int main() {
  int c = caller();
  printf("c = %d\n", c);
}

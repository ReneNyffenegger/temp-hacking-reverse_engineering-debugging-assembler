#include <stdio.h>
int caller();

int main() {
  int a = caller();

  if (a != 20*21/2) {
    printf("! ");
  }
  printf("a = %d\n", a);
}

#include <stdio.h>

#define likely(x)   __builtin_expect(!!(x), 1)
#define unlikely(x) __builtin_expect(!!(x), 0)


int f(int p) {

  if (likely(p == 42)) {
    return 1;
  }
  return 0;

}
int g(int p) {

  if (p == 42) {
    return 1;
  }
  return 0;

}

int main() {

  int sum = f(42) + g(42);
  printf("sum = %d\n", sum);

}

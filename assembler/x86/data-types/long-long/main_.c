#include <stdio.h>

int main() {
  unsigned long long ll;
  printf("sizeof(ll) = %d\n", sizeof(ll));

  ll = 0xfedcba0987654321;
  printf("ll = %lx\n", ll);
}

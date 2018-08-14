#include "f.h"

int sum_array(int* a, int len) {
  int s = 0;
  for (int i=0; i<len;i++) {
    s += a[i];
  }
  return s;
}

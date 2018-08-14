#include <stdio.h>
#include "f.h"

int ary[5] = {1,2,3,4,5};

int main() {
  printf("f: %d\n", sum_array(ary, sizeof(ary)/sizeof(int)));
}

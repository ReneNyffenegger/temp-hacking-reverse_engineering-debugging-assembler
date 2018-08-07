#include <stdio.h>

int main() {
  int cnt = 0;

  for (int i=0; i<100; i++) {
    if ( !(i%5) || !(i%7) || !(i%11)) {
      cnt ++;
    }
  }
  
  printf("cnt = %d\n", cnt);
}

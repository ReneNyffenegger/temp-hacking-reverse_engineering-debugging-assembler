#include <windows.h>
#include <stdio.h>

int main() {
  char buf[100];

  char* hello = "Hello, world";
  int   num   =  42;
  
  long long unsigned int x = 0xffffFFFFffffFFFF;
                           //  0123456789ABCDEF

  long long   signed int y = 0x7fffFFFFffffFFFF;
                           //  0123456789ABCDEF

  wsprintfA(buf, "%s, the num is %d, the long num is %I64u %I64d\n", hello, num, x, y);
  printf("%s\n", buf);

}

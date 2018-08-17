#include <windows.h>
#include <stdio.h>

int main() {
  char buf[100];

  char* hello = "Hello, world";
  int   num   =  42;
  

  wsprintfA(buf, "%s, the num is %d\n", hello, num);
  printf("%s\n", buf);

}

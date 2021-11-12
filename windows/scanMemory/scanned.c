#include <windows.h>
#include <stdio.h>
#include <stdio.h>

const char* global = "Hello World.";

int main() {

   char* local = "in main";

   DWORD pid = GetCurrentProcessId();

   printf("pid = %d\n", pid);

   getc(stdin);
  

}

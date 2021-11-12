#include <windows.h>
#include <stdio.h>
#include <inttypes.h>

const char* global = "Hello World.";

int main() {

   char* local = "in main";

   DWORD pid = GetCurrentProcessId();

   printf(".\\scanner.exe %d   %" PRId64 "  %"  PRId64 "\n", pid, global, local);

   getc(stdin);
  

}

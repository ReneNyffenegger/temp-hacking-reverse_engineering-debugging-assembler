
#include <unistd.h>
#include <sys/syscall.h>
//#include <string.h>

int stringlen(const char *s);
void printstring(const char *str) {
    // Using the syscall for write (syscall number 1 on x86_64 for Linux)
    
	  const char *pos;
    for (pos = str; *pos; pos++) {}

    int strlen = pos - str;

    syscall(SYS_write, STDOUT_FILENO, str, strlen);
}

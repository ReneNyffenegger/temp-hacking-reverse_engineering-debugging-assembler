
#include <unistd.h>
#include <sys/syscall.h>
#include <string.h>

void printstring(const char *str) {
    // Using the syscall for write (syscall number 1 on x86_64 for Linux)
    syscall(SYS_write, STDOUT_FILENO, str, strlen(str));
}

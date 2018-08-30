
static // static because f does not need to be global.
void f() {
}

int _start() {
  f();

  asm volatile (
//    ".intel_syntax noprefix \n"
      "mov eax, 1             \n" // syscall no of exit
      "mov ebx, 0             \n" // exit value
      "int 0x80               \n"
  );

}

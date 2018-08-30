.intel_syntax noprefix
.globl  _start

.text
f:
  ret

_start:
  call  f

  mov eax, 1 # syscall nr of exit
  mov ebx, 0 # exit value
  int      0x80

.intel_syntax noprefix

.section .text
  .globl _start

_start:

mov ebx,   42
mov eax,    1
int      0x80

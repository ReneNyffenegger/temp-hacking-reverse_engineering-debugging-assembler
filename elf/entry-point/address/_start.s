.intel_syntax noprefix

.section .text
  .globl _start

_start:

mov eax,    1
mov ebx,   42
int      0x80

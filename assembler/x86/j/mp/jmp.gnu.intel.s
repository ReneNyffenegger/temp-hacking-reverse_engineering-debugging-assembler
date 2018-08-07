.intel_syntax noprefix

.section .text
  .globl _start

_start:

mov ebx, 42 # set exit value
jmp skip_10 # jump unconditionally
mov ebx, 10 # ebx will not be changed, exit value remains 42
skip_10:

mov eax,    1 # Call exit.
int      0x80

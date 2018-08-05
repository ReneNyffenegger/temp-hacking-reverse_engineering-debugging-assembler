.intel_syntax noprefix

.section .data
  exit_value:
    .long 42

.section .text
  .globl _start

_start:

mov eax,    1
mov ebx,   exit_value
int      0x80

.intel_syntax noprefix

.section .data
  exit_value:
    .long 42

.section .text
  .globl _start

_start:

mov eax,    1
mov ebx,   exit_value # Apparently move ebx, [exit_value] would work too (seems to be the canonical way…)
int      0x80

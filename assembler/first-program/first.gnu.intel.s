.intel_syntax noprefix

.section .text
  .globl _start ; Entry point for ELF. _start is default. Use ld -e other_entry_point to override.

_start:

mov eax,    1
mov ebx,   42
int      0x80

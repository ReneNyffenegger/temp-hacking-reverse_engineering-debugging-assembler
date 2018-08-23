.intel_syntax noprefix

.section .text
.globl  _start

_start:

enter 0, 0
leave

mov eax, 1
mov ebx, 0
int 0x80

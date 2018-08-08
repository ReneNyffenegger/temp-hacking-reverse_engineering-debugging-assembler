.intel_syntax noprefix

.section .data
  summands:
    .long 20, 22

.section .text
  .globl _start

_start:

mov ebx,  [summands  ]
add ebx,  [summands+4]

mov eax,    1 # Call exit.
int      0x80

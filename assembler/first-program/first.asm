SECTION .text
  global _start
_start:

mov eax,  1 ; syscall number (here: exit)
mov ebx, 42 ; first (and only) argument to syscall exit
int 0x80    ; execute syscall

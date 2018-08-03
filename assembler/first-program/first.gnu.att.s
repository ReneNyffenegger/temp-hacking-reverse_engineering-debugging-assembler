.section .text
.globl _start
_start:

movl $0x01, %eax   # syscall number (here: exit)
movl $0x2a, %ebx   # first (and only) argument to syscall exit
int         $0x80  # execute syscall

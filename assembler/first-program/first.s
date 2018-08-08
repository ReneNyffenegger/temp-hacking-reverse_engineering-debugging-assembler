#
#  Trying to compile, on linux, with
#    gcc -m32 -nostdlib -masm=intel first.s
#
.section .text
.globl _start
_start:

movq rax, $0x01   # syscall number (here: exit)
movq rbx, $0x2a   # first (and only) argument to syscall exit
int       $0x80   # execute syscall

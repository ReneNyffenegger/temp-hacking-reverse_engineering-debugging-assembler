.intel_syntax noprefix

.section .text
  .globl _start

_start:

#
#  If an 8 bit register (such as al) or a 16 bit register (suach as ax)
#  is used, the remaining bits in rax remain unaffected. However, using
#  a 32 bit register (such as eax) sets the remaining bits to 0.
#

mov rax, 0x0123456789abcdef
mov al , 0x75                 # rax becomes 0x0123456789abcd75
mov ax , 0x4321               # rax becomes 0x0123456789ab4321
mov eax, 0x76543210           # rax becomse 0x0000000076543210

mov ebx,    0 # exit value

mov eax,    1 # call exit
int      0x80

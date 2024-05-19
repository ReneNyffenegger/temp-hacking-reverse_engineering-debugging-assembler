section .data
msg    db 'Hello world', 0x0a
lenMsg equ $-msg

section .text
  global _start

_start:

 ; sys_write(int fd, const void* buf, size_t count)
mov eax,   4 ; syscall number
mov ebx,   1 ; first argument: fd
mov ecx, msg ; buf
mov edx,  lenMsg ; len of msg
int 0x80

mov eax,   1
mov ebx,   0
int 0x80

.intel_syntax noprefix

.file "_start.s"

#.section .text
.text
.globl _start
.type  _start, @function

_start:
 mov rax,   60
 mov rdi,   17
 syscall

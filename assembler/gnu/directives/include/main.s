.intel_syntax noprefix

.section .text
  .globl _start

_start:

# set exit value to 42
mov ebx,   42

# include instructions to exit program with
# exit value in ebx:
.include "exit.s"

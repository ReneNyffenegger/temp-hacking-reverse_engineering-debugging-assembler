  .file "printstring.c"
# GNU C17 (Debian 12.2.0-14) version 12.2.0 (x86_64-linux-gnu)
# compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.1-p1, MPC version 1.3.1, isl version isl-0.25-GMP

# warning: MPFR header version 4.1.1-p1 differs from library version 4.2.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=att -mtune=generic -march=x86-64 -O0 -fno-asynchronous-unwind-tables -fomit-frame-pointer
  .text
  .globl  printstring
  .type printstring, @function

// void printstring(char *str);

#define stack_str     8(%rsp)
#define stack_pos    24(%rsp)
#define stack_strlen 20(%rsp)

printstring:

  subq  $40, %rsp
  movq  %rdi, stack_str # save str parameter on stack

# 
# pos = str
#
  movq  stack_str, %rax # str, tmp84
  movq  %rax, stack_pos # tmp84, pos

# printstring.c:11:     for (pos = str; *pos; pos++) {}
  jmp .L_is_pos_eq_0

.L_increase_pos:

#
# pos = pos + 1
#
  addq  $1, stack_pos

.L_is_pos_eq_0:

#
# Get the character that *pos points at.
#
  movq  stack_pos, %rax #
#
# MOVe Zero extended Byte to Long:
# store the byte pointed at by %rax (= *pos) in %eax:
#
  movzbl  (%rax) , %eax

#
# Is the character stored in %eax (or more correctly in %al) zero?
#
  testb %al, %al

#
# Jump if it is not zero
#
  jne .L_increase_pos

#
# stringlen is pos - str
# Store this length on the stack
#
  movq  stack_pos, %rax
  subq  stack_str, %rax
  movl  %eax, stack_strlen

#
#
# Syscall

  movl $1           , %eax     # write() is syscall 1
  movq $1           , %rdi     # 1st argument is filescriptor (1=stdout)
  movq stack_str    , %rsi     # 2nd argument: pointer to the string
  movl stack_strlen , %edx     # 3rd argument
  
# movl  stack_strlen, %edx
# movq  stack_str   , %rax
# movl  %edx, %ecx  # tmp87,
# movq  %rax, %rdx  # tmp88,
# movl  $1, %esi  #,
# movl  $1, %edi  #,
# movl  $0, %eax  #,

  syscall
# call  syscall@PLT #

# printstring.c:16: }
# nop 
  addq  $40, %rsp

  ret 
  .size printstring, .-printstring
  .ident  "GCC: (Debian 12.2.0-14) 12.2.0"
  .section  .note.GNU-stack,"",@progbits

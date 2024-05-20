.section .data
    hello_world: .asciz "Hello, World!\n"

.section .text
    .global _start


_start:

  # Write the string to stdout
    mov $1 , %rax            # syscall: write
    mov $1 , %rdi            # file descriptor: stdout
    lea hello_world(%rip), %rsi # address of the string
    mov $14 , %rdx           # number of bytes to write
    syscall

  # Exit the program
    mov $60, %rax           # syscall: exit
    xor %rdi, %rdi          # exit status: 0
    syscall

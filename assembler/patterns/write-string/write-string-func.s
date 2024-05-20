 .section .data
    hello_world: .asciz "Hello, World!\n"

.section .bss
    len: .skip 8  # reserve space for the length

.section .text
    .global _start

_start:
  # Call strlen to get the length of the string in hello_world
    lea hello_world(%rip), %rdi  # Load the address of the string into rdi

  # --- Determine length of string pointed at in rdi) --------------
  
#       xor %rax, %rax  # Clear rax (will hold the length)
        xor %rcx, %rcx  # Clear rcx (counter)
     
       .loop:
           movb (%rdi,%rcx), %dl  # Load byte from rdi + rcx into dl
           test %dl, %dl          # Test if the byte is zero
           je .done               # If zero, end of string
           inc %rcx               # Increment counter
           jmp .loop              # Repeat loop
     
        .done:
            mov %rcx, %rax         # Move the counter value to rax

  # ----------------------------------------------------------------


    movq %rax, len(%rip)         # Store the length in 'len'

  # Write the string to stdout
    mov $1, %rax                 # syscall: write
    mov $1, %rdi                 # file descriptor: stdout
    lea hello_world(%rip), %rsi  # address of the string
    mov len(%rip), %rdx          # number of bytes to write
    syscall

    # Exit the program
    mov $60, %rax                # syscall: exit
    xor %rdi, %rdi               # exit status: 0
    syscall


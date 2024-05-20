 .section .data
    hello_world:    .asciz "Hello, World!\n"
    another_string: .asciz "Another string\n"

.section .bss
    len: .skip 8  # reserve space for the length

.section .text
    .global _start


_start:

  # Call strlen to get the length of the string in hello_world
    lea hello_world(%rip), %rsi  # Load the address of the string into rsi

  # --- Determine length of string pointed at in rsi) --------------
  
        xor %rcx, %rcx  # Clear rcx (counter)
     
       .loop:
           movb (%rsi,%rcx), %dl  # Load byte from rsi + rcx into dl
           test %dl, %dl          # Test if the byte is zero
           je .done               # If zero, end of string
           inc %rcx               # Increment counter
           jmp .loop              # Repeat loop
     
        .done:
            movq %rcx, %rdx

  # ----------------------------------------------------------------

  #
  # write string
  #
    mov $1, %rax                 # syscall nr: 1 = syscall nr for write
    mov $1, %rdi                 # param 1   : 1 = file descriptor for stdout
                                 # param 2   : address of string (already stored in %rdi)
                                 # param 3   : len of string     (already stored in %rdx)
    syscall

  # ----------------------------------------------------------------


    lea another_string(%rip), %rsi  # Load the address of the string into rsi

        xor %rcx, %rcx  # Clear rcx (counter)
     
       .loop1:
           movb (%rsi,%rcx), %dl  # Load byte from rsi + rcx into dl
           test %dl, %dl          # Test if the byte is zero
           je .done1              # If zero, end of string
           inc %rcx               # Increment counter
           jmp .loop1             # Repeat loop
     
        .done1:
            movq %rcx, %rdx

  # ----------------------------------------------------------------

  #
  # write string
  #
    mov $1, %rax                 # syscall nr: 1 = syscall nr for write
    mov $1, %rdi                 # param 1   : 1 = file descriptor for stdout
                                 # param 2   : address of string (already stored in %rdi)
                                 # param 3   : len of string     (already stored in %rdx)
    syscall

  # Exit the program

    mov $60, %rax                # syscall: exit
    xor %rdi, %rdi               # exit status: 0
    syscall


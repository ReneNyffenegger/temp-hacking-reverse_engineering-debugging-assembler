.section .text
    .global printstring

printstring:
  # Input: %rdi contains pointer to the string
    movq %rdi, %rsi            # Move string pointer to %rsi
    call strlen                # Call strlen to find the length of the string

  # Syscall: write(1, string, length)
    movq $1, %rax              # Syscall number for sys_write (1)
    movq $1, %rdi              # File descriptor (stdout is 1)
    movq %rax, %rdx            # Length of the string (returned in %rax by strlen)
    syscall                    # Invoke syscall
    ret

strlen:
  # Input: %rsi contains pointer to the string
  # Output: %rax contains string length
    xorq %rax, %rax            # Zero %rax (set length to 0)
strlen_loop:
    cmpb $0, (%rsi, %rax)      # Compare each byte with null terminator
    je strlen_done             # If zero (end of string), jump to done
    incq %rax                  # Increment the length (in %rax)
    jmp strlen_loop            # Repeat the loop
strlen_done:
    ret

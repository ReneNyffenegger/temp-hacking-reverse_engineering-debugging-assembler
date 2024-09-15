        .text
        .globl  _start
_start:

          pop           %rdi    # argc
          leaq  (%rsp), %rsi    # After pop'ping rdi, argv is now pointed at by rsp

#
#   Alternatively?
#
#         movq     (%rsp),%rdi    # argc
#         leaq    8(%rsp),%rsi    # argv

#         ---------------------------------------------------------------------------
#
#   third parameter: environ
#
#         environ = &argv[argc+1]

          movq    %rdi, %rdx      # rdx = argc
          incq    %rdx            # rdx = rdx + 1
          shlq    $3, %rdx        # rdx = rdx * 8

          addq    %rsi, %rdx      # rdx = argv[argc + 1]
#         movq    %rax, %rdx

# #       movq    %rax,Cenviron
# #       pushq   %rsi
# #       pushq   %rdi
# #       call    Cmain

        call    main

        movq    %rax , %rdi
        movq    $60  , %rax
        syscall
#       addq    $16,%rsp
#       pushq   %rax
# ret

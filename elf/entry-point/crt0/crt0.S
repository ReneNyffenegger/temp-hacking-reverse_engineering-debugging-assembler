        .text
        .globl  _start
_start:

          pop           %rdi
          leaq  (%rsp), %rsi

          leaq 8(%rsp), %rdx

#
#   Alternatively?
#
#         movq     (%rsp),%rdi    # argc
#         leaq    8(%rsp),%rsi    # argv


          movq    %rdi,%rdx       # environ = &argv[argc+1]
          incq    %rdx            # rax = rax + 1
          shlq    $3,%rdx         # rax = rax * 8

          addq    %rsi,%rdx       # rax = rax + rsi
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

#
#        https://gist.github.com/Scherso/d11e7de8bd27f234519cfb94348d9c70
#

        .text
        .globl  _start
_start:

     #    xor   %rbp , %rbp     # Is zeroing out RBP recommended somewhere?

          pop           %rdi    # argc
          movq   %rsp , %rsi    # After pop'ping rdi, argv is now pointed at by rsp
#         leaq  (%rsp), %rsi    #    Alternatively

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



    #
    #   Align the stack point on a multiple of 16-bytes
    #
    #       The following two operations are equivalent.
    #
        and    $-16               , %rsp    
        and    $0xFFFFFFFFFFFFFFF0, %rsp

        call    main

    #
    #   syscall exit() with value returned from main.
    #

        movq    %rax , %rdi
        movq    $60  , %rax
        syscall
#       addq    $16,%rsp
#       pushq   %rax
# ret

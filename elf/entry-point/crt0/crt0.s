        .text
        .globl  _start
_start:
        leaq    8(%rsp),%rsi    # argv
        movq    0(%rsp),%rcx    # argc
        movq    %rcx,%rax       # environ = &argv[argc+1]
        incq    %rax            # rax = rax + 1
        shlq    $3,%rax         # rax = rax * 8
        addq    %rsi,%rax       # rax = rax + rsi
#       movq    %rax,Cenviron
        pushq   %rsi
        pushq   %rcx
#       call    Cmain

        call    main

        movq    %rax , %rdi
        movq    $60  , %rax
        syscall
#       addq    $16,%rsp
#       pushq   %rax
# ret

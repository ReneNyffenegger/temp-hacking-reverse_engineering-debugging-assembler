
Stack Frame after process creation)
         ---------------
rsp ->   |  argc        |
         |  argv[0]     | --> points to "/path/to/program"
         |  argv[1]     | --> points to "arg1"
         |  ...         |
         |  NULL        |                                                                  it is guaranteed by both ANSI C and POSIX.1 that argv[argc] == NULL (But this is not the problem of the Kernel)
         |  envp[0]     | --> points to "ENV_VAR=value"
         |  envp[1]     | --> points to "OTHER_VAR=value"
         |  ...         |
         |  NULL        |
         |  ...         | (actual strings like "/path/to/program", "arg1", "ENV_VAR=value")
         ---------------

_start:

    /* This is the canonical entry point, usually the first thing in the text
      segment.  The SVR4/i386 ABI (pages 3-31, 3-32) says that when the entry
      point runs, most registers' values are unspecified, except for:
   
      %rdx		Contains a function pointer to be registered with `atexit'.
   		This is how the dynamic linker arranges to have DT_FINI
   		functions called for shared libraries that have been loaded
   		before this code runs.
   
      %rsp		The stack contains the arguments and environment:
   		0(%rsp)				argc
   		LP_SIZE(%rsp)			argv[0]
   		...
   		(LP_SIZE*argc)(%rsp)		NULL
   		(LP_SIZE*(argc+1))(%rsp)	envp[0]
   		...
   						NULL

See also

  https://github.com/lattera/glibc/blob/master/sysdeps/x86_64/start.S


  https://stevens.netmeister.org/631/lecture06.pdf S.15

       CS631 - Advanced Programming in the UNIX Environment Slide 15
       Process Creation
       Linux: glibc/sysdeps/x86_64/start.S
       0000000000401058 <_start>:
       401058: 31 ed xor %ebp,%ebp
       40105a: 49 89 d1 mov %rdx,%r9
       40105d: 5e pop %rsi
       40105e: 48 89 e2 mov %rsp,%rdx
       401061: 48 83 e4 f0 and $0xfffffffffffffff0,%rsp
       401065: 50 push %rax
       401066: 54 push %rsp
       401067: 49 c7 c0 e0 1a 40 00 mov $0x401ae0,%r8
       40106e: 48 c7 c1 50 1a 40 00 mov $0x401a50,%rcx
       401075: 48 c7 c7 91 11 40 00 mov $0x401191,%rdi
       40107c: e8 2f 01 00 00 callq 4011b0 <__libc_start_main>
       401081: f4 hlt
       401082: 90 nop
       401083: 90 nop

  /home/rene/github/dev/hacking-reverse_engineering-debugging-assembler/temp/elf/entry-point-address


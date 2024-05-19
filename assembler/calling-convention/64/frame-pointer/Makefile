prog: caller.s callee.s
	gcc -g -nostdlib $^ -o $@

caller.s: caller.c Makefile
	gcc -O1 -S -fno-asynchronous-unwind-tables -fomit-frame-pointer -masm=intel $< -o $@

callee.s: callee.c Makefile
	gcc -O1 -S -fno-asynchronous-unwind-tables -fomit-frame-pointer -masm=intel $< -o $@

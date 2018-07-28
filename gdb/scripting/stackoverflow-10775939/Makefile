script.out: a.out
	@gdb --batch --command=gdb.script --args ./a.out 5 > script.out
	@cat script.out

a.out: test.c
	@gcc -g $^

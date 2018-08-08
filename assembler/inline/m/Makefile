
all: a.out
	./a.out

a.out: m.s
	gcc -O0 -masm=intel    $<

m.s: m.c
	gcc -O0 -masm=intel -S $<

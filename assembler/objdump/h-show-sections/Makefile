.PHONY: objdump_h_a.out

all: objdump_h_a.out

objdump_h_a.out: a.out
	objdump -h $<

a.out: main.o the_num.o
	@gcc $^ -o $@


main.o: main.c
	gcc -c $< -o $@
	objdump -h $@

the_num.o: the_num.c
	gcc -c $< -o $@
	objdump -h $@

a.out: main.o the_num.o
	gcc $^ -o $@
	objdump -h $@


main.o: main.c
	gcc -c $< -o $@
	objdump -h $@

the_num.o: the_num.c
	gcc -c $< -o $@
	objdump -h $@

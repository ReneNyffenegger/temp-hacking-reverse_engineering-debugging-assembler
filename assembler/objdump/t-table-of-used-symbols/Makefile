a.out: main.o the_num.o
	gcc $^ -o $@
	objdump -t $@

main.o: main.c
	gcc -c $< -o $@
	objdump -t $@

the_num.o: the_num.c
	gcc -c $< -o $@
	objdump -t $@

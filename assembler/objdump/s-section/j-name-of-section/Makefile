a.out: main.o the_num.o
	gcc $^ -o $@
	objdump -s -j .rodata $@

main.o: main.c
	gcc -c $< -o $@
	objdump -s -j .rodata $@

the_num.o: the_num.c
	gcc -c $< -o $@
	objdump -s -j .data $@

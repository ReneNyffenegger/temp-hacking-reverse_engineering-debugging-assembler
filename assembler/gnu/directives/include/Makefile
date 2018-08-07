a.out: main.o
	ld -m elf_x86_64 $< -o $@

main.o: main.s exit.s
	gcc -c $< -o $@

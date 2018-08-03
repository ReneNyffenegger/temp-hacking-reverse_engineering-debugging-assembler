#    I was unable to compile gnu assembler into an exeuctable
# main.o: main.s
# 	gcc -masm=att -c -o main.o main.s

main.nasm: main.nasm.o
	gcc $< -o $@

main.nasm.o: main.asm Makefile
	nasm -f elf64 -l main.lst $< -o $@

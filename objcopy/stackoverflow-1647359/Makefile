all: assembly.out objdump.out

assembly.out: test.bin
	objdump -D -Mintel,x86 -b binary -m i386 $< > $@

test.bin: test.o
	objcopy --only-section=.text --output-target binary $< $@

objdump.out: test.o
	objdump --disassemble --disassembler-options intel $< > $@

test.o: test.c Makefile
	gcc -nostdinc -m32 -masm=intel -Wall -c $< -o $@

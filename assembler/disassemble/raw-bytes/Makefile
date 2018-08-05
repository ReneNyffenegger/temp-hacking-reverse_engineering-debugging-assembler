all: assembly.bin
	objdump -D -Mintel,x86-64 -b binary -m i386 assembly.bin
	@#ndisasm -b64 assembly.bin

assembly.bin: create-bytes.sh Makefile
	./create-bytes.sh

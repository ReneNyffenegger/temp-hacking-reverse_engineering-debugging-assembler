#
# Apparently,
#    -m  sets the architecture and
#    -M  sets the syntax
#
# -m might be set to i8086 or i386 or …
# -M might be set to intel for intel syntax
# -M seems also to understand x86-64
#

all: assembly.bin assembly.o
	objdump -D -Mintel,x86-64 -b binary -m i386 --disassemble-zeroes assembly.bin
	@#ndisasm -b64 assembly.bin

# TODO: extract raw assembly byes from assembly.o and
#       compare with assembly.bin
assembly.o: assembly.s
	gcc $< -c -o $@

assembly.bin: create-bytes.sh Makefile
	./create-bytes.sh

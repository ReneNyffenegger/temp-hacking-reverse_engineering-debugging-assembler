#
#  https://www.muppetlabs.com/~breadbox/software/tiny/teensy.html
#
#.PHONY: run

# run: tiny
#	./tiny

tiny: tiny.asm Makefile
	nasm -f bin -o tiny tiny.asm
	chmod 755 tiny

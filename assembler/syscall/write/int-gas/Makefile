all: call-write-int call-write-int-manually-modified # call-write-int.s write-int.s

call-write-int-manually-modified:   call-write-int-manually-modified.s write-int-manually-modified.s
	gcc                               call-write-int-manually-modified.s write-int-manually-modified.s  -o call-write-int-manually-modified

call-write-int:   call-write-int.s write-int.s
	gcc             call-write-int.s write-int.s  -o call-write-int

call-write-int.s: call-write-int.c Makefile
	gcc -O3 -S -fverbose-asm -fno-asynchronous-unwind-tables -masm=intel call-write-int.c -c -o call-write-int.s

write-int.s: write-int.c Makefile
	gcc -O3 -S -fverbose-asm -fno-asynchronous-unwind-tables -masm=intel write-int.c      -c -o write-int.s

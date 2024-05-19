call-write-int: call-write-int.s write-int.s
	gcc call-write-int.s write-int.s -o call-write-int


call-write-int.s: call-write-int.c
	gcc -O0 -S  -masm=intel call-write-int.c -o call-write-int.s

write-int.s: write-int.c
	gcc -O0 -S  -masm=intel write-int.c -o write-int.s

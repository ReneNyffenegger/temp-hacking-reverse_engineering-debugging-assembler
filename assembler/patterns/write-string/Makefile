all: write-string-func write-string

write-string-func: write-string-func.o
	gcc -nostdlib  $< -o $@

write-string-func.o: write-string-func.s
	gcc  $< -c -o $@

write-string: write-string.s
	gcc -nostdlib  $< -o $@

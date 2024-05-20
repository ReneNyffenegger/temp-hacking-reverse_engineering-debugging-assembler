all: write-string-func write-string

write-string-func: write-string-func.s
	gcc -nostdlib  $< -o $@

write-string: write-string.s
	gcc -nostdlib  $< -o $@

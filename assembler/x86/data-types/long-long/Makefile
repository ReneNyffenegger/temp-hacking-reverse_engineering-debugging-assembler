a.out: main.intel_.s
	gcc $<

main.intel_.s: main_.c
	gcc -fverbose-asm -S -masm=intel $< -o $@


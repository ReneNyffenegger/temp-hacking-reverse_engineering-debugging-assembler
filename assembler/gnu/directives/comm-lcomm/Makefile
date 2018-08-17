all: main.nm symbols.nm a.out

a.out: main.o symbols.o
	gcc $^ -o $@

main.nm: main.o
	nm $< > $@

symbols.nm: symbols.o
	nm $< > $@

main.o: main.s
	gcc -c $< -o $@

symbols.o: symbols.s
	gcc -c $< -o $@

main.s: main_.s
	sed -f ../../../rm-instr.sed $< > $@

# symbols.s: symbols_.s
# 	sed -f ../../../rm-instr.sed $< > $@

main_.s: main_.c symbols_.h
	gcc -S $< -o $@

symbols_.s: symbols_.c symbols_.h
	gcc -S $< -o $@

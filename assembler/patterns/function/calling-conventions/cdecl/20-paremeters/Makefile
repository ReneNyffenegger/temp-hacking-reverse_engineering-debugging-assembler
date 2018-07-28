RM_INSTR=../../../../../rm-instr.sed

a.out: main.o caller.o callee.o
	gcc $^


# Create .o files

main.o: main.c
	gcc -c $<

caller.o: caller.s
	gcc -c $<

callee.o: callee.s
	gcc -c $<


# Turn _.s into .s

caller.s: caller_.s
	sed -f $(RM_INSTR) $^ > $@

callee.s: callee_.s
	sed -f $(RM_INSTR) $^ > $@


# Turn _.c into _.s

caller_.s: caller_.c
	gcc -S -masm=intel -O0 $<

callee_.s: callee_.c
	gcc -S -masm=intel -O0 $<


# Check if Makefile has changed

caller_.c: Makefile
	touch caller_.c

callee_.c: Makefile
	touch callee_.c

main.c: Makefile
	touch main.c


# Check if sed script is newer:

Makefile: $(RM_INSTR)
	touch Makefile

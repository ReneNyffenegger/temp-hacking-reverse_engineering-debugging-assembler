.PHONY: objdump_r_a.out objdump_r_the_num.o objdump_r_main.o

all: objdump_r_a.out objdump_r_the_num.o objdump_r_main.o

objdump_r_a.out: a.out
	@echo ''
	@echo objdump -r $<
	@objdump -r $<

objdump_r_the_num.o: the_num.o
	@echo ''
	@echo objdump -r $<
	@objdump -r $<

objdump_r_main.o: main.o
	@echo ''
	@echo objdump -r $<
	@objdump -r $<

a.out: main.o the_num.o
	@gcc $^ -o $@

main.o: main.c
	@gcc -c $< -o $@

the_num.o: the_num.c
	@gcc -c $< -o $@

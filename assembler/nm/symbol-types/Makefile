.PHONY: R_readonly B_unintialzied

all: R_readonly B_unintialzied

R_readonly: a.out
	@#
	@#  Read only might (does?) correspond to .rodata in elf.
	@#
	@echo 'Readonly symbols:'
	@nm $< | grep ' R '

B_unintialzied: a.out
	@#
	@#  .bss ?
	@#
	@echo ''
	@echo 'Uninitialized symbols:'
	@nm $< | grep ' B '

a.out: main.o the_num.o
	gcc $^ -o $@
	nm $@

main.o: main.c
	gcc -c $< -o $@

the_num.o: the_num.c
	gcc -c $< -o $@

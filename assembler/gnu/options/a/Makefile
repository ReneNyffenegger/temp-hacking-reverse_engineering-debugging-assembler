a.out: main.o
	ld -m elf_x86_64 $< -o $@

#
# -a enables the listing feature.
# It can be fine tuned with the --listing options:
#    --listing-lhs-width=…
#    --listing-lhs-width2=…
#    --listing-rhs-width=…
#    --listing-cont-lines=…
#  and the directives
#    .list
#    .sbttl
#    .psize
#    .eject
main.o: main.s Makefile
	as -a -c $< -o $@

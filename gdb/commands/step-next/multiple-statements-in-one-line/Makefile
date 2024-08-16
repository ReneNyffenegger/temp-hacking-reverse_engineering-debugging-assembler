.PHONY: all run-step run-next

all: run-step run-next

run-step: step
	@gdb --batch --command=step.gdb ./step

run-next: next
	@gdb --batch --command=next.gdb ./next

next: next.c
	@gcc -g next.c -o next

step: step.c
	@gcc -g step.c -o step

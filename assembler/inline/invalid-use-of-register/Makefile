ifeq ($(OS), Windows_NT)
	EXECUTABLE=a.exe
else
	EXECUTABLE=./a.out
endif

all: $(EXECUTABLE)
	@$(EXECUTABLE)

$(EXECUTABLE): invalid-use-of-register.s
	@gcc -masm=intel $<

invalid-use-of-register.s: invalid-use-of-register.c  Makefile
	@gcc -masm=intel -S $<

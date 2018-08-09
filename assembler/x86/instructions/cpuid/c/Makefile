ifeq ($(OS), Windows_NT)
	EXECUTABLE=a.exe
else
	EXECUTABLE=./a.out
endif

all: $(EXECUTABLE)
	@$(EXECUTABLE)

$(EXECUTABLE): cpuid.s
	@gcc -masm=intel $<

cpuid.s: cpuid.c  Makefile
	@gcc -masm=intel -S $<

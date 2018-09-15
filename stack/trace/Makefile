all: a.out stack_traces.dll

a.out: stack_traces.c
	gcc -g stack_traces.c -limagehlp

stack_traces.dll: stack_traces.c
	gcc -DAS_DLL -shared $< -o $@ -Wl,-add-stdcall-alias -limagehlp



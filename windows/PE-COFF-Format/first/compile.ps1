# cl /Fa /c entry.c

  ml64 /c entry.asm

# cl /Fa /c func.c
# cl /Fa /c consts.c

link /nologo /entry:entry /nodefaultlib /subsystem:windows /machine:x64 entry.obj func.obj consts.obj kernel32.lib user32.lib /out:prog.exe

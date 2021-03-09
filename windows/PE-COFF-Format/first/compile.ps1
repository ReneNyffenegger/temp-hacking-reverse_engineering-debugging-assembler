# cl /Fa /c entry.c

  ml64 /nologo /c entry.asm

# cl /Fa /c func.c

  ml64 /nologo /c func.asm

# cl /Fa /c consts.c

  ml64 /nologo /c consts.asm

link /nologo /entry:entry /nodefaultlib /subsystem:windows /machine:x64 entry.obj func.obj consts.obj kernel32.lib user32.lib /out:prog.exe

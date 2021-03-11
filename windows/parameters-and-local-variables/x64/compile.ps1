  cl   /nologo /GS- /Faentry.asm_       /c entry.c
# cl   /nologo /GS- /Fafunc_0.asm_      /c entry.c
  cl   /nologo /GS- /Fafunc_7.asm_      /c func_7.c
  cl   /nologo /GS- /Fafunc_3_leaf.asm_ /c func_3_leaf.c

#   ml64 /nologo  /c entry.asm
# 
# # cl /nologo /GS- /Fafuncs.asm_ /c funcs.c
#   ml64 /nologo  /c funcs.asm
# 
link /nologo /entry:entry /nodefaultlib /subsystem:console /machine:x64 entry.obj func_7.obj func_3_leaf.obj kernel32.lib user32.lib /out:prog.exe

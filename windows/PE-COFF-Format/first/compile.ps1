rm *.obj
rm *.exe

# cl /nologo /FAcs /Faentry.asm_ /GS- /c entry.c

  ml64 /nologo /safeseh /c entry.asm

# cl /nologo /FAcs /Fafunc.asm_ /GS- /c func.c

  ml64 /nologo /safeseh /c func.asm

# cl /nologo /FAcs /Faconsts.asm_ /GS- /c consts.c

  ml64 /nologo /safeseh /c consts.asm

  link /nologo /entry:entry /nodefaultlib /subsystem:console /machine:x64 entry.obj func.obj consts.obj kernel32.lib user32.lib /out:prog.exe
# link /nologo /entry:entry /nodefaultlib /subsystem:console /machine:x64 entry.obj func.obj consts.obj kernel32.lib user32.lib /out:prog.exe

$process = Start-Process .\prog -passThru -Wait
$exitCode = $process.ExitCode
write-host "exitCode: $exitCode"

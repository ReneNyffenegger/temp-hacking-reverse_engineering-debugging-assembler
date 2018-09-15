option explicit

declare function init lib "C:\temp\temp-shellcode\windows\AddVectoredExceptionHandler\AddVectoredExceptionHandler.dll" () as long

sub main()
    init
end sub

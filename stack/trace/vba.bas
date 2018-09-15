option explicit

declare sub      cause_calamity lib "C:\temp\temp-shellcode\stack\trace\stack_traces.dll" ()
declare function init           lib "C:\temp\temp-shellcode\stack\trace\stack_traces.dll" () as long

sub main()
    init
    cause_calamity
end sub

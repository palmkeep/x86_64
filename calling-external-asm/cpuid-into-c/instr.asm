section .text

global cpuid_vendor_name
cpuid_vendor_name:
    push        rdi
    mov         eax,                    0
    cpuid
    pop         rax
    mov dword   [rax+0],    ebx 
    mov dword   [rax+4],    edx 
    mov dword   [rax+8],    ecx
    mov byte    [rax+12],   10
    mov byte    [rax+13],   0
    ret



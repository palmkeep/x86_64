;
;   Calculates e by repeated multiplication of (1 + 2^-n) with itself
;
;   mf must contain the IEEE754 representation of (1 + 2^-n)
;   n must contain the the sign flipped exponent: |-n|
;

extern printf

section .text

        global _start
_start:
        movsd   xmm0, qword [rel mf]
        
        mov     rax, [rel n]
loop:
        mulsd   xmm0, xmm0
        sub     rax, 1
        jne     loop

        lea     rdi, [rel cformats]     ; Load format string
        mov     rax, 1                  ; Tell printf to use one xmm register as parameter
        call    [rel printf wrt ..got]

exit:
        mov     rax, 60                 ; sys_exit (linux x86_64)
        xor     rdi, rdi
        syscall


section .rodata
n:          dq 52                                               ; |-52|         : integer
mf:         db 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x3f   ; 1 + 2**(-52)  : double

cformats:   db "%.20f", 0xa, 0x0

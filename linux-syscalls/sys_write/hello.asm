;
;   Testing linking with gcc
;
;   nasm -felf64 test.asm
;   gcc -no-pie -nostartfiles test.o
;

extern printf


section .text

        global _start
_start:
        ; Print hello world with sys_write
        mov     rdi,    1           ; filedescriptor
        mov     rsi,    msg         ; char*
        mov     rdx,    14          ; chars to print
        mov     rax,    1           ; sys_write
        syscall

exit:
        mov     rax, 60
        xor     rdi, rdi
        syscall



section .data
msg:    db      "Hello, world!", 0xa, 0x0


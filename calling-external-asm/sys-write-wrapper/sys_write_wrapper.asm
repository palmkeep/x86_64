default rel

extern printf

section .text

    ; call_write(char* str_ptr, int str_len)
    ;   rdi = str_ptr
    ;   rsi = str_len

    global call_write
call_write:
    push    rdi             ; Preserve rdi

    mov     rdi, 1          ; Call sys_write
    mov     rdx, rsi        ;
    mov     rsi, [rsp]      ;
    mov     rax, 1          ;
    syscall

    pop     rdi             ; Restore rdi and exit
    ret                     ;

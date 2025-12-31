global ft_read

extern __errno_location

section .text

        ; ARGUMENTS:
        ; rdi - file descriptor
        ; rsi - buffer to read into
        ; rdx - number of bytes to read

ft_read:
        mov     rax, 0 
        syscall
        cmp rax, 0
        jl .error
        ret

.error:
    neg rax
    mov rdi, rax
    call __errno_location wrt ..plt
    mov [rax], edi
    mov rax, -1
    ret

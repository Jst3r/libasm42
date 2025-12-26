global ft_write

extern __errno_location

section .text

        ; ARGUMENTS:
        ; rdi - file descriptor
        ; rsi - buffer to write from
        ; rdx - number of bytes to write

ft_write:
    mov rax, 1
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


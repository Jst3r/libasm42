global _ft_strdup
extern _malloc

section .text

_ft_strdup:
    test rdi, rdi
    jz .error
    ;mov rsi, rdi

    xor rcx, rcx

.count_len:
    cmp byte [rdi + rcx], 0
    jz .alloc
    inc rcx
    jmp .count_len
    

.alloc:
    inc rcx
    push rdi
    mov rdi, rcx
    call _malloc
    pop rsi
    test rax, rax
    jz .error

    mov rdi, rax    ; dest

.copy:
    mov dl, [rsi]
    mov [rdi], dl
    inc rdi
    inc rsi            ;inc rdx
    test dl, dl
    jne .copy

    ret


.error:
    xor rax, rax
    ret
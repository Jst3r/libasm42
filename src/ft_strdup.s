global _ft_strdup
extern _malloc
_ft_strdup:
    test rdi, rdi
    jz .error
    mov rsi, rdi

    xor rcx, rcx

.count_len:
    cmp byte [rdi, rcx], 0
    jz .alloc
    inc rcx
    jmp .count_len
    

.alloc:
    inc rcx
    mov rdi, rcx
    call _malloc
    test rax, rax
    jz .error

    mov rdi, rax    ; dest
    xor rdx, rdx    ; index

.copy:
    mov al, [rsi + rdx] ; move src to tmp
    mov [rdi, rdx], al  ; mov tmo to dup
    inc rdx             ;inc rdx
    test al, al
    jne .copy

    mov rax, rdi
    ret


.error:
    xor rax, rax
    ret
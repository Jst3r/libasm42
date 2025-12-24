global ft_strcpy

ft_strcpy:
    xor rax, rdi

.loop:
    mov dl, byte [rsi]
    mov [rdi], dl
    inc rdi
    inc rsi
    test dl, dl
    jne .loop

    ret
    
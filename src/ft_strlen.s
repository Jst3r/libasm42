global ft_strlen
ft_strlen:
    xor rax, rax ;

.loop:
    cmp byte [rdi], 0; cmp byte by byte.
    je .done         ; jmp to .done if equal.

    inc rdi           ; go to next byte in rdi
    inc rax            ; increass rax;
    jmp .loop

.done
    ret
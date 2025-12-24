global ft_strcmp


ft_strcmp:

.compare:
    movzx eax, byte [rdi]
    movzx edx, byte [rsi]
    cmp eax, edx
    jne .not_equal
    test eax, eax
    jz .done
    inc rdi
    inc rsi
    jmp .compare


.done:
    xor rax, rax
    ret

.not_equal:
    sub eax, edx
    ret
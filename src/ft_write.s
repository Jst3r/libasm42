global ft_write


ft_write:
    xor rax, rax        ; rax to 0
    cmp rdi, 0          ;cmp rdi with 0 if first arg (fd) is less than 0 return an error
    jl .error
    ; call syscall write();
    mov rax, 1
    syscall
    cmp rax, 0
    jge .done                   ; if file descriptor is greater than or equal to 0 return the 

.error:
    extern __errno_location     ; Declare an external symbol
    mov edi, 9                  ; 9 is num for Bad file number  errno
    call __errno_location       ; returns a pointer to the thread-local errno in RAX
    mov dword [rax], edi        ; here we change that value in the address to EBADF 9 using edi because errno is 32bit integer
    mov rax, -1                 ; sets the rax to -1 so we return -1 like in write funtion.

.done:
    ret

global printstr
printstr:
  section .text:
    [bits 64]
    push r12
    push r13
    mov ah, 0x0e
    mov r12, rdi ; lenght
    mov r13, [rsi] ; adress of string
    
    xor rcx, rcx
    loop:
        xor rax, rax
        mov al, [r13 + rcx * 8]
        int 0x10
        inc rcx
        cmp rcx, r12
        jl loop
    
    pop r13
    pop r12
    ret

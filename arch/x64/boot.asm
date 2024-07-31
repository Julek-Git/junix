[bits 64]

mov rdi, str_len
mov rsi, str

call printstr

mov al, "J"
int 0x10

jmp $
times 510 - ($ - $$) db 0
dw 0xaa55

%include "arch/x64/functions/printstr.asm"

str: db "Hello OS!",10,0
str_len: equ $-str

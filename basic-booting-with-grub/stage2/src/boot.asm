BITS 32
extern cmain

section .multiboot_header
align 4
    dd 0x1BADB002 
    dd 0x0  
    dd -(0x1BADB002 + 0x0)   

section .text
global start
start:
    cli

    mov esp, stack_top

    push eax 
    push ebx 
    call cmain 


halt:
    hlt
    jmp halt

section .bss
align 16
resb 8192                  
stack_top:

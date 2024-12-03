[BITS 16] 
[ORG 0x7C00]    

start:
    xor ax, ax
    mov ds, ax  
    mov es, ax  

    
    mov si, hello_msg  
print_char:
    lodsb       
    cmp al, 0       
    je hang      

    mov ah, 0x0E    
    int 0x10    
    jmp print_char 

hang:
    cli           
    hlt          
    jmp hang      

hello_msg db "Hello, World!", 0

times 510-($-$$) db 0 
dw 0xAA55         

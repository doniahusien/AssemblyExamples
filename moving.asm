.model small
.data
string db 'hissen','$'

.stack 64
.code

MAIN proc far
    .STARTUP
    mov cx, 6   ; Loop counter for the string
    lea si, string
    mov ax,41h
    
p:
    cmp [si], 's'
    je increment
    inc si
    loop p
increment:
    inc ax
 
cmp [si],'$'
je displayre
 
inc si
jmp p
 
    ; Display the result using interrupt 10h
    displayre: 
    mov dl, ax
    mov ah,02h
    
    int 21h

.EXIT
MAIN ENDP
END MAIN
 
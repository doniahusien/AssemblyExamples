.MODEL SMALL
.Data 
x db 'hello' ,'$'
.stack 

.code
main proc far 
    mov ax,@Data
    mov ds,ax
    
    lea dx,x
    mov ah,09h
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end main

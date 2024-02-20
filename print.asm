.MODEL SMALL
.DATA
x db 'hello' ,'$'
.stack 64

.CODE
    main proc far 
        .STARTUP
    
        lea dx,x
        mov ah,09h
        int 21h
    
        .exit
    main ENDP
end main

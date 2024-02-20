.model small
.data
MSG DB 'donia','$'
.stack 64
.code

    main proc far
        .startup
        MOV CX,5
        LEA SI,MSG
    P:
        sub [si],20h
        INC SI
        
    LOOP P
    
    MOV DX,OFFSET MSG
    MOV AH,09H
    INT 21H
            
        .exit
    main endp
end main






        

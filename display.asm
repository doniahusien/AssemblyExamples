.model small

.stack 64
.code

    MAIN proc far
    .STARTUP
    MOV AH,02H
    MOV DL,42H
    INT 21H
    .EXIT
    MAIN ENDP
END MAIN    
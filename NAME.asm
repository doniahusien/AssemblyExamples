.MODEL SMALL
.DATA
X DB 'DONI','$'
.STACK 64
.CODE
    MAIN PROC FAR
        .STARTUP
        LEA DX,X
        MOV AH,09H
        INT 21H 
        .EXIT
    MAIN ENDP
END MAIN    
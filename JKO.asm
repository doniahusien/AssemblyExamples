.MODEL SMALL
.DATA
MSG DB "eNTER NUMBER: ","$"
EVE db 10,"Even","$"
ODD DB 10,"Odd","$"

.CODE
MAIN PROC FAR 
.STARTUP
LEA DX,MSG
MOV AH,09H
INT 21H

MOV AH,01H
INT 21H

MOV AH,00H
MOV BL,2
DIV BL

CMP AH,0
JNE B
MOV DX,OFFSET EVE
MOV AH,09H
INT 21H
JMP STOP

B:
MOV DX,OFFSET ODD
MOV AH,09H
INT 21H
STOP:
.EXIT 
MAIN ENDP
END MAIN
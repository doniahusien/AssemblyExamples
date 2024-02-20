.MODEL SMALL
.DATA
     MSG DB "ENTER NUMBER","$"
     EVE DB ,"EVEN","$" 
     ODD DB ,"ODD","$"
     
.STACK 64
.CODE
    MAIN PROC FAR
        .STARTUP
        ;DISPLAY MSG
        lea DX,MSG
        MOV AH,09H
        INT 21H
        
        ;TAKE INPUT IN AL
        MOV AH,01H
        INT 21H
        
        ;DIVIDE BY 2
        MOV AH,00H
        MOV DL,2
        DIV DL
        
        ;COMPARE 
        CMP AH,0
        JNE ODDS
        
        MOV DX,OFFSET EVE
        MOV AH,09H
        INT 21H
        JMP STOP
        
    
    ODDS:
     MOV DX,OFFSET ODD
        MOV AH,09H
        INT 21H
        
    
    STOP:  
        .EXIT
    MAIN ENDP

END MAIN

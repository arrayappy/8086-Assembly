
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;linear search program

include 'emu8086.inc'
.model small
.data
    ARR db 1,12,3,4,5,6,7
.code
    MOV AX,@data
    MOV DS,AX
    MOV SI,0
    MOV AX,0  
    ;PRINT "ENTER NUMBER :"
    CALL SCAN_NUM
    MOV AL,CL
    
    START:
        CMP SI,7
        JE END
        CMP ARR[SI],AL
        JE EXIT
        INC SI
        JMP START
        END:
            PRINT "NOT FOUND" 
            JMP GO
        EXIT:
            PRINT "FOUND"                   
            JMP GO
        GO:
           ret
           DEFINE_PRINT_NUM
           DEFINE_PRINT_NUM_UNS
           DEFINE_SCAN_NUM 







INCLUDE 'EMU8086.INC'
A dW 1,2,3,4,5
;PRINT 'ENTER NO OF. ARRAY ELEMENTS :'
;call scan_num
MOV CX,5
;MOV BX,CX 
MOV SI,0
;SCAN:
;    MOV AX,CX
;    PRINT 'ENTER VALUE :'
;    call scan_num        
;    PRINTN
;    MOV A[SI],cl
;    INC SI
;    MOV CX,AX
;LOOP SCAN

;MOV CX,BX
;MOV SI,0

PRINT:   
     MOV AX,A[SI]
     INC SI
     CALL PRINT_NUM
     PRINT 09
LOOP PRINT     
;DEFINE_scan_num
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

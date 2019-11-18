
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include 'emu8086.inc'
.DATA
arr1 db 5,6,7,8   
arr2 db 1,2,3,4

.CODE
mov ax,@data
mov ds,ax
mov si,0
mov ax,0    

START:
    CMP si,4
    jz end
    mov al,arr1[si]
    add al,arr2[si]
    mov arr1[si],al
    call PRINT_NUM 
    PRINT 32
    inc si
    jmp START   

end:
    ret

ret
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
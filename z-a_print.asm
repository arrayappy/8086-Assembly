
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
include 'emu8086.inc'
mov ah,02h
mov dl,90 
mov cx,26
start:
    int 21h   
    print 20h
    dec dl
    loop start
ret

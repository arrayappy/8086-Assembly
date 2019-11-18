
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include 'emu8086.inc'
; add your code here
.code
    arr db 'narik'
.data
    mov ax,@data
    mov ds,ax
    mov ax,0
    mov ah,02h
    mov si,4
start:
    cmp si,-1
    je end  
    mov dl,arr[si]
    int 21h
    dec si
    jmp start
end:              
    ret 
define_print_num
define_print_num_uns

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include 'emu8086.inc'
mov ax,132
mov cx,0
mov si,0
mov bl,10

start:
    cmp si,3
    je end
    idiv bl 
    mov dx,ax 
    mov ax,cx
    mul bl
    add al,dh
    mov cl,al
    mov al,dl
    inc si
    jmp start
end:
    mov ax,cx
    call print_num
    ret
define_print_num
define_print_num_uns
ret





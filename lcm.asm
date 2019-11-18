
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h        
include 'emu8086.inc'

; add your code here 
mov ax,10
mov bx,5
mov cx,ax
mov ch,al
start:
    cmp ax,bx
    ja check
    jb new
new: 
    mov ax,bx
    mov bx,cx  
    mov cx,ax
    mov ch,al
check:
    div bl
    cmp ah,0
    je end
    mov al,ch
    mov ah,0
    add al,cl 
    mov cl,al
    jmp check 
end: 
    mul bl 
    call print_num
ret                 
define_print_num
define_print_num_uns





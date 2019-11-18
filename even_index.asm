
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
include 'emu8086.inc'

.code
    arr db 1,8,5,7,2,4
.data
    mov ax,@data
    mov ds,ax
    mov ax,0
    mov si,0
    mov ch,2
start:
    cmp si,7
    je end  
    mov al,arr[si]
    div ch 
    cmp ah,0
    je even
    inc si
    jmp start
even:
    mov ax,si
    call print_num   
    print 09h
    inc si
    jmp start
end:
ret
define_print_num
define_print_num_uns




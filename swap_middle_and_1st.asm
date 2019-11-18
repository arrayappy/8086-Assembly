
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
include 'emu8086.inc'
.data
    arr db 1,6,3,4,2,5
.code
    mov ax,@data
    mov ds,ax
    mov ax,0
    mov si,0
    mov al,6
    mov ch,2
    div ch
start:
    mov bl,arr[si]
    mov ah,0
    mov si,ax
    mov al,arr[si]
    mov arr[si],bl
    mov si,0
    mov arr[si],al
loop1:
    cmp si,6
    je end
    mov al,arr[si]
    call print_num
    print 20h
    inc si  
    jmp loop1
end:
    ret          
define_print_num
define_print_num_uns




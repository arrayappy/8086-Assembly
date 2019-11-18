
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here   
include 'emu8086.inc'
.data
    arr db 1,3,5,6,8
.code
    mov ax,@data
    mov ds,ax
    mov ax,0
    mov si,0
    mov al,arr[si]
start:
    cmp si,5
    je end
    cmp arr[si],al
    ja next
    inc si
    jmp start
next:
    mov al,arr[si]
    inc si
    jmp start
end:
    print "Largest Number is "
    call print_num
ret
    define_print_num
    define_print_num_uns

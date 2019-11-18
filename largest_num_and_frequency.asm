
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
include 'emu8086.inc'
.data
    arr db 5,90,6,60,60,60,61,80,9,90
.code
    mov ax,@data
    mov dx,ax
    mov ax,0
    mov si,0
    mov al,arr[si] 
    mov bl,0
freq:
    cmp si,10
    je new
    cmp arr[si],al
    ja next 
    inc si
    jmp freq
next:
    mov al,arr[si]
    inc si
    jmp freq  
new:
    cmp si,0
    je end
    cmp arr[si],al
    je count
    dec si
    jmp new
count:
    add bl,1
    dec si
    jmp new
end:           
    print 'Largest number is '
    call print_num  
    mov al,bl  
    printn
    print 'Frequency is '
    call print_num
ret 
define_print_num
define_print_num_uns






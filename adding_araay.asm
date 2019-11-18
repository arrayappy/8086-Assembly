;You may customize this and other start-up templates; 
;The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
include 'emu8086.inc' 
.data
    arr1 db 1,3,5,4,6
    arr2 db 3,4,6,5,6
.code
    mov ax,@data
    mov ds,ax
    mov ax,0
    mov si,0
    mov al,arr1[si]
    mov cx,5 
print "Addition of arrays is " 
start:
    mov al,arr1[si]
    add al,arr2[si]
    call print_num 
    inc si
    print 20h
    loop start 
ret
define_print_num
define_print_num_uns
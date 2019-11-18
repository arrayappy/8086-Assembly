
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
include 'emu8086.inc'
.data
    arr db 4,7,5,6,10
.code
    mov ax,@data
    mov dx,ax
    mov ax,0
    mov si,0
    mov al,arr[si]    
    mov dl,2
start:
    cmp si,5
    je end
    mov al,arr[si]
    div dl
    cmp ah,0
    jz even
    jnz odd 
even:
    mov ax,0
    mov al,arr[si]
    call print_num
    print 20h
    print "is even"
    printn 20h  
    inc si
    jmp start
odd:
    mov ax,0
    mov al,arr[si]
    call print_num
    print 20h
    print "is odd"  
    printn 20h
    inc si
    jmp start
end:
    ret
ret
define_print_num
define_print_num_uns

ret
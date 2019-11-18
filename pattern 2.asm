org 100h
include 'emu8086.inc'
.CODE
mov ax,-1
mov si,4
start:       
    mov cx,0
    cmp si,ax
    je end
new:
    cmp cx,si
    je old
    print "*"
    inc cx
    jmp new
old:   
    printn
    dec si
    jmp start
end:
    ret
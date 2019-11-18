org 100h
include 'emu8086.inc'
.CODE
mov ax,5
mov si,1
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
    inc si
    jmp start
end:
    ret
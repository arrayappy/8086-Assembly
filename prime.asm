
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include 'emu8086.inc'
; add your code here
.data
    arr db 1,10
.code
    mov ax,@data
    mov ds,ax
    mov ax,0
    print 'Prime numbers in given range are: '
start: 
    mov al,arr[0]
    cmp al,arr[1]
    je final
    mov bx,ax
    mov cx,ax
    mov si,0
    jmp calc
calc:
    cmp si,2
    je go
    mov ax,cx
    div bl
    dec bx
    cmp bx,0
    je end
    cmp ah,0
    je factinc
    jmp calc
factinc:
    inc si
    jmp calc
end:
    mov cx,ax
    cmp si,1
    je prime
    jmp go
prime:
    call print_num
    print 20h
go:
    inc arr[0]
    jmp start
final:
    ret
ret                  
    define_print_num
    define_print_num_uns                                   
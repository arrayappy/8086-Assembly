
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
org 100h

include 'emu8086.inc'
.data
    arr db 38,50,40,20,10
.code 
    mov cx,0
l1: 
    inc cx
    mov si,0
    cmp cx,5
    je  exit
    jne l2
l2:
    mov al,arr[si]
    mov bl,arr[si+1]
    cmp al,bl
    ja  swap
    inc si
    cmp si,4
    je  l1
    jne l2
swap:
    mov arr[si],bl
    mov arr[si+1],al
    inc si
    cmp si,4
    je  l1
    jne l2
exit:
    cmp si,5
    je ending
    jne print
print:
    mov al,arr[si]
    print 09h
    call print_num
    inc si
    jmp exit
ending:      
    printn
    printn ' Bubble Sort is completed.'
ret

    define_print_num
    define_print_num_UNS


                 
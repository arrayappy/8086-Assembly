
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
include 'emu8086.inc'
.data
  str1 db 'kiran'  
  strlen1=$-str1
  str2 db 'shiva'
  strlen2=$-str2
.code
    mov ax,@data
    mov ds, ax
    mov es, ax
    lea si, str1   
    lea di, str2
    mov cx, 5
    mov al, strlen1
    mov bl, strlen2
    cmp al, bl
    jne Not_Equal
    repe cmpsb
    jne Not_Equal
    jmp Equal

Not_Equal:
    print 'Not Equal'
    jmp Exit
Equal:
    print 'Equal'
Exit:
    ret
define_print_num
define_print_num_uns
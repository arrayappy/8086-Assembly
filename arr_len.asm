
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include 'emu8086.inc'
; add your code here 
.code
    arr db 1,2,3,4 
    count = ($-arr)
mov ax,count  
call print_num

ret
define_print_num
define_print_num_uns
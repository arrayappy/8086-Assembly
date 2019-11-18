org 100h
include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,cx
call scan_num  
dec cx
start:   
    mul bl
    loop start
end:
    call print_num   
ret
define_print_num
define_print_num_uns
define_scan_num
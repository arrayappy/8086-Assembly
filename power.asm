include 'emu8086.inc'
mov al,5
mov cx,4
start:
mul al
cmp cx,0   
je end 
dec cx
loop start
end:
call print_num
ret 
define_print_num
define_print_num_uns

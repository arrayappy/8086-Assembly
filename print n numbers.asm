include 'emu8086.inc'
mov si,6
mov ax,0
mov bx,1
deepak:
dec si
cmp si,0
je end  
add ax,bx
call print_num
jmp deepak
end:
ret
define_print_num
define_print_num_uns 
ret

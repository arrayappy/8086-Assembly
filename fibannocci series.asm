org 100h
include 'emu8086.inc'
mov si,12
mov ax,0
mov bx,1
print 20h
print '1'
print 20h
deepak:
dec si
cmp si,0
je end  
add al,bl
call print_num 
print 20h
mov cl,al 
mov al,bl
mov bl,cl
jmp deepak
end:
ret
define_print_num
define_print_num_uns 

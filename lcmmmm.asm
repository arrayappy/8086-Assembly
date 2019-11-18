include 'emu8086.inc'  
print 'enter num :'
call scan_num
mov bx,cx
printn
print 'enter num 2:'
call scan_num
printn
mov ax,cx
div bx
cmp dx,0
jz prnt1
jnz prnt2
jmp end
prnt1:
    mov ax,cx
    call print_num
jmp end
prnt2:
    mov ax,cx
    mul bx
    call print_num 
    end:
        print 'over...'
define_scan_num
define_print_num
define_print_num_uns

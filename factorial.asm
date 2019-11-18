include 'emu8086.inc' 
print 'enter num : '
call scan_num
mov ax,cx
dec cx
printn
fact:
    mul cx       
    dec cx
    cmp cx,1
    jnz fact 
    printn  
    print 'factorial is'
    call print_num
define_print_num
define_print_num_uns
define_scan_num
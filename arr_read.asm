include 'emu8086.inc'
ar db ?        
mov si,0
print 'Enter No.of Elements :'
call scan_num  
mov bx,cx  
printn
s:
    mov ax,cx
    print 'Enter Value :'
    call scan_num  
    printn
    mov ar[si],cl
    inc si
    mov cx,ax
loop s 
           

mov si,0 
print 'Array :'     +
printn  
mov cx,bx
   
p:
    mov al,ar[si] 
    call print_num
    inc si
    print 09
    
loop p

define_scan_num
define_print_num
define_print_num_uns
include 'emu8086.inc'
ary db ?
ary1 db ?
mov si,0
print 'enter the no.of elements : ' 
call scan_num
mov bx,cx                           
printn
enter:
    mov ax,cx
    print 'enter value : '
    call scan_num
    printn
    mov ary[si],cl
    inc si        
    mov cx,ax
    loop enter
mov si,0
print 'the array is :'
printn        
mov cx,bx
prary:  
    mov al,ary[si]
    call print_num
    print 9           
    inc si
    loop prary 
printn  
print 'enter elements array2'
printn
mov si,0 
mov cx,bx
enter2:
    mov ax,cx
    print 'enter value : '
    call scan_num
    printn
    mov ary1[si],cl
    inc si        
    mov cx,ax
    loop enter2
mov si,0
print 'the array is :'
printn        
mov cx,bx
prary2:  
    mov al,ary1[si]
    call print_num
    print 9       
    inc si
    loop prary2  
mov si,0    
mov cx,bx
printn
adi:        
    mov dl,ary[si] 
    add dl,ary1[si] 
    mov al,dl
    call print_num
    print 9
    inc si
    loop adi
define_print_num
define_print_num_uns
define_scan_num    
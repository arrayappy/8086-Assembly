include 'emu8086.inc'
ary db ? 
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
mov si,0               
printn
print 'the eve array is'      
mov cx,bx
even:        
    mov ax,0
    mov al,ary[si]
    mov dl,2
    div dl 
    cmp ah,0 
    jz ped
    even2: 
    inc si
    dec bx
    cmp  bx,0
    ja even
jmp cg1
ped:       
    mov ax,0
    mov al,ary[si]
    call print_num
    print 9          
    jmp even2
cg1:
 mov bx,cx   
mov si,0               
printn
print 'the odd array is'
odd:        
    mov ax,0
    mov al,ary[si]
    mov dl,2
    div dl 
    cmp ah,1 
    jz pod
    odd2: 
    inc si
    dec bx
    cmp bx,0
    ja odd
jz end
pod:       
    mov ax,0
    mov al,ary[si]
    call print_num
    print 9          
    jmp odd2
end:
print 'over'
define_print_num
define_print_num_uns
define_scan_num    
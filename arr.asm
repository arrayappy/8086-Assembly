include 'emu8086.inc'     
arr db ?
print 'Enter no.of Elements :'
call scan_num
mov dx,cx
mov si,0 
s:
    mov ax,cx    
    printn 'Enter Value :'
    call scan_num   
    mov arr[si],cl
    inc si
    mov cx,ax
loop s

mov cx,dx  
mov si,0
print 'Array Elements :'
p:        
  mov al,arr[si]
  inc si
  call print_num
  print 09
loop p

define_scan_num
define_print_num
define_print_num_uns
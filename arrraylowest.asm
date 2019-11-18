include 'emu8086.inc'
ary db ?
start:        
mov si,0
call scan_num
mov ax,cx
mov bx,cx    
printn
print 'number you entered is :'
call print_num
printn   
enter:
print 'enter the value :'
call scan_num
printn
mov ary[si],cl
inc si
dec ax
cmp ax,0
ja enter
printn
print 'the given array is :'
mov si,0
mov cx,bx
prarray:
mov al,ary[si]
call print_num
print 9
inc si
loop prarray 
mov si,0
  mov cx,4
  mov al,ary[si]
  printn
  print 'the largest value in the given array is : '
large: 
  inc si
  cmp al,ary[si]
  jc run
  mov al,ary[si]
  loop large
  call print_num
  ret
  run:
  loop large
  call print_num
 ret  
define_scan_num 
define_print_num
define_print_num_uns
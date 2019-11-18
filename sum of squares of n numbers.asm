;sum of squares of n numbers
include "emu8086.inc"
org 100h
.code
    print "Enter a number:"
    call scan_num
    printn
    print "sum of squares of "
    mov ax,cx
    call print_num
    print " numbers:"
    mov ax,0
    
start:
      cmp cx,0
      je end      
      mov bx,ax
      mov ax,cx
      mul cx
      add ax,bx
      dec cx 
      jmp start
      
end:  
    call print_num_uns
    ret
    
ret 
   define_print_num
   define_print_num_uns
   define_scan_num
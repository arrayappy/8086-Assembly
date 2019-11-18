include "emu8086.inc"
org 100h
.code
print "Enter number:"
call scan_num
printn
print "Sum of "
mov ax,cx
call print_num
print " numbers:"
mov ax,0

start:
      cmp cx,0
      je end
      add ax,cx
      dec cx
      jmp start
      
      
end:
   call print_num_uns    
    ret
   
   
ret  
   define_print_num
   define_print_num_uns
   define_scan_num 
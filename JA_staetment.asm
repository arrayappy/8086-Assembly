include 'emu8086.inc'
mov al,5
cmp al,5
JA label1
PRINTN 'al is not above 5'
jmp exit
label1:
  printn 'al is above 5'
exit:
ret                                                                                                                     
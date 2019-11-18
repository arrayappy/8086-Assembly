.data
   vijay db 1,2,3,4,5
   mohan db ?
.code
begin:
    mov ax,@data
    mov ds,ax
    
    mov cx,4
    mov si,0
    mov al,vijay[si]
pro:
inc si
cmp al,vijay[si]
jnc com
mov al,vijay[si]
com:
loop pro
mov mohan ,al
mov ah,4ch
int 21h
end begin
org 100h

;defining counter for for_numbers loop!
mov cx,9
   
   
;starting the first loop!       
for_numbers:
      
     
    
      
    ;defining index!
    mov bx,index
    
    ;getting code[i] value
    mov ax,code[bx]
    
    ;multplying!
    mov di,multiplicand   
    mul di
    mov dx,0
    
    ;adding with sum!
    add sum,ax
    
    ;re-calculating counters!
    add index,2
    dec multiplicand
      
     
     
     
     
      
loop for_numbers
;ending the first loop!
 
  
;checking sum
mov sp,11
mov ax,sum 
div sp


 
cmp dx,2
jl less_than_2
jmp greater_than_2



;condition 1:
greater_than_2:
mov si,11

sub si,dx

mov check,si

jmp exit




;condition 2:
less_than_2:

mov check,dx
jmp exit


;exiting the program
exit:


ret
code dw 1,2,3,4,5,6,7,8,9 ;offset in words: 2
sum dw 0
index dw 0
check dw 0
multiplicand dw 10
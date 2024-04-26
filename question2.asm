
;___________________________________________________________________________________________________
;   IMPORTANT NOTE: LINE 10 AND 27 FOR NUMBER OF DIGITS - LINE 55 AND 70 FOR THE SPECIFIED NUMBER
;___________________________________________________________________________________________________
 
 
org 100h

mov bx, x
mov cx, 4
     
     
     
;starting the first loop for calculation of Armestrang Numbers!  
for_getting_the_number:
  
  ;Getting digits from number x
       mov ax,bx
       mov si,10
       div si
       mov bx,ax                               
     
  ;Saving the cx counter!  
       push cx
               
       ;specifying the counter again for the loop!                        
       mov cx,4
        
       ;counter needs x-1 iterations!
       sub cx,1
       
       ;specifying the variables for the loop!
       mov di,dx
       mov ax,dx
        
       ;starting first the loop!
       for_power:
            mov dx,di
            mul dx                    
       loop for_power
       ;ending the second loop!
                  
                  
  ;Restoring the cx counter!                
    pop cx
    add sum,ax 
                    
                        
loop for_getting_the_number
;ending the first loop!
      
      
      
;comparing sum with the number!                       
cmp sum,1634
je correct

;incorrect
mov y,0

jmp exit

;correct
correct:
mov y,1

exit:

ret
x dw 1634
y dw ?
sum dw 0




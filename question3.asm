
;___________________________________________________________________________________________________
;   IMPORTANT NOTE: LINE 125 FOR THE SPECIFIED NUMBER
;___________________________________________________________________________________________________
 
 
org 100h

mov bx, x
     
      
;Calculating digits of a number
 
mov di,10
mov ax,x
 
for_digits_loop:
    cmp x,10
    jl out_of_the_good_numbers_loops
    mov dx,0
    div di
   
    add counter,1
    
    cmp ax,di
    jl exit_digits_loop
    
    jmp for_digits_loop     
                                                  
exit_digits_loop: 



;initializing counter and sum
mov cx,counter
mov sum,0 
     

 
;loop for good numbers          
for_good_numbers:
     
    ;starting the first loop for calculation of Good Numbers!  
    for_getting_the_number:
      
      ;Getting digits from number x
           mov ax,bx
           mov si,10
           mov dx,0
           div si
           mov bx,ax                               
         
      ;Saving the cx counter!  
           push cx
                   
           ;specifying the counter again for the loop!                        
           mov cx,1
            
           ;counter needs x-1 iterations!
           ;sub cx,1
           
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


mov ax,sum


mov di,10
mov ax,sum
       
;moving the latest value to the x!
mov sp,sum
mov x,sp        
       
;resetting variables!
mov counter,1
mov bx,sum
mov sum,0


loop for_digits_loop

cmp ax,10
jl out_of_the_good_numbers_loops

loop for_good_numbers

         
out_of_the_good_numbers_loops: 
      
;comparing sum with the number!                       
cmp x,1
je correct

;incorrect
mov y,0

jmp exit

;correct
correct:
mov y,1

exit:

ret
x dw 203
y dw ?
sum dw 0
counter dw 1





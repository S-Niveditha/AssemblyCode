include 'emu8086.inc'

org 100h

.data
a_real dw ?
a_imag dw ?
b_real dw ?
b_imag dw ?  
Mgen db 'THESE ARE THE AVAILABLE OPERATIONS : $' 
Madd db '1.Addition $'
Msub db '2.Subtraction $'
Mmul db '3.multiplaction$'
Mdiv db '4.division $'
 


.code
mov ax,@data    ;its kinda an unnecessary step but we still do it for good practice
mov ds,ax 


;printn
;print 'WE WILL DO THE OPERATIONS ON COMPLEX NUMBERS'         ;pretty programming thats all
;printn
;printn
;print 'ALL THE NUMBERS ARE IN A+iB FORMAT '
;printn
;printn  
        
;ALL OF THIS IS TO GET a_real VALUE         



print 'ENTER 1st NUMBER REAL VALUE [A_REAL]: '      
        
mov ah,01h   ;getting 1st char input
int 21h
sub al,48d   ;converting ascii to integer
lea bx,a_real    ;putting address of a_real in b
mov b. [bx],al  ;modifying value of a_real 

mov ah,01h
int 21h
sub al,48d    ;repeating the above step and getting the number
mov cl,al
mov ax,a_real ;putting a_real value in ax so that finally can get the 8 bit number
mov ch,10d    ;putting 10h in ch so that we can do the 2 digit number multiplication
mul ch        ; finally getting the 8 bit value perfectly
add al,cl
lea bx,a_real
mov b. [bx],al ;storing the value in a_real 

;ALL OF THIS IS TO GET a_imag VALUE
printn
print 'ENTER 1st NUMBER IMAGINARY VALUE [A_IMAG]: ' 

mov ah,01h   ;getting 1st char input
int 21h
sub al,48d   ;converting ascii to integer
lea bx,a_imag    ;putting address of a_imag in b
mov b. [bx],al  ;modifying value of a_imag 

mov ah,01h
int 21h
sub al,48d    ;repeating the above step and getting the number
mov cl,al
mov ax,a_imag ;putting a_real value in ax so that finally can get the 8 bit number
mov ch,10d    ;putting 10h in ch so that we can do the 2 digit number multiplication
mul ch        ; finally getting the 8 bit value perfectly
add al,cl
lea bx,a_imag
mov b. [bx],al    

;ALL OF THIS IS TO GET b_real VALUE      
printn
printn
print 'ENTER 2nd NUMBER REAL VALUE [B_REAL]: '      
        
mov ah,01h   ;getting 1st char input
int 21h
sub al,48d   ;converting ascii to integer
lea bx,b_real    ;putting address of a_real in b
mov b. [bx],al  ;modifying value of a_real 

mov ah,01h
int 21h
sub al,48d    ;repeating the above step and getting the number
mov cl,al
mov ax,b_real ;putting a_real value in ax so that finally can get the 8 bit number
mov ch,10d    ;putting 10h in ch so that we can do the 2 digit number multiplication
mul ch        ; finally getting the 8 bit value perfectly
add al,cl
lea bx,b_real
mov b. [bx],al ;storing the value in a_real 

;ALL OF THIS IS TO GET a_imag VALUE
printn
print 'ENTER 2nd NUMBER IMAGINARY VALUE [B_IMAG]: ' 

mov ah,01h   ;getting 1st char input
int 21h
sub al,48d   ;converting ascii to integer
lea bx,b_imag    ;putting address of a_imag in b
mov b. [bx],al  ;modifying value of a_imag 

mov ah,01h
int 21h
sub al,48d    ;repeating the above step and getting the number
mov cl,al
mov ax,b_imag ;putting a_real value in ax so that finally can get the 8 bit number
mov ch,10d    ;putting 10h in ch so that we can do the 2 digit number multiplication
mul ch        ; finally getting the 8 bit value perfectly
add al,cl
lea bx,b_imag
mov b. [bx],al    
                 
;DISPLAYING GENERAL MESSAGE
printn
printn
lea dx,Mgen
mov ah,09h
int 21h



;SHOWING OPTIONS  
printn
printn 

lea dx,Madd
mov ah,09h
int 21h     
printn

lea dx,Msub
mov ah,09h
int 21h
printn

lea dx,Mmul
mov ah,09h
int 21h 
printn   

lea dx,Mdiv
mov ah,09h
int 21h 
printn  

;ACCEPTING INPUT 
printn
printn
print 'ENTER YOUR VALUE HERE : '
mov ah,01h
int 21h
sub al,30h
            
;NOW IF INPUT==1 or addition   
cmp al,01h
je addition:
    addition:
        ;TYPE THE ADDITION CODE HERE 


;IF INPUT==2 do subtraction
cmp al,02h
je subtraction:
    subtraction:
        ;TYPE THE SUBTRACTION CODE HERE 


;IF INPUT==3 do multiplaction
cmp al,03h
je multiplication:
    multiplication:
        ;TYPE THE MULTIPLICATION CODE HERE    



;IF INPUT==4 DO DIVISION 1 


cmp al,04h
je divison:
    divison:    
    
        





ret

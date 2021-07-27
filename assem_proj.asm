;qais shuqair 20170136

org 100h 
.data

a db     "                        |                            |                          $"
c db     "--------------------------------------------------------------------------------$"

swin db "|$"
swin2 db "\$"
swin3 db "/$"

o1 db "     *********          ",0dh,0ah,"$"
o2 db "    *         *         ",0dh,0ah,"$"
o3 db "    *         *         ",0dh,0ah,"$"
o4 db "    *         *         ",0dh,0ah,"$"
o5 db "    *         *         ",0dh,0ah,"$"
o6 db "     *********          $" 

X1 db "    *         *        ",0dh,0ah,"$"
X2 db "      *     *          ",0dh,0ah,"$"
X3 db "        * *            ",0dh,0ah,"$"
X4 db "        * *            ",0dh,0ah,"$"
X5 db "      *     *          ",0dh,0ah,"$"
X6 db "    *         *         $"


b db 0dh,0ah
    
counter db 1 
numcount db 0
e db 0   
win db 9 dup(-1)
user1score db 0
user2score db 0
counterdraw db 0 
drawdiagonal db 0
drawdiagonal2 db 0 

result1 db "user 1 score is   user 2 score is   $"

 .code
 top:
   mov numcount,0       
     
      mov ah,2
       mov bl,0
       mov bh,0
       int 10h
         
     call draw
     
     
     
     
     looop:
       
   
cmp e,1
je o
       
call oposition      
inc e 
jmp x     
o:
      
call xposition
dec e
x:     
inc numcount


      
cmp win[0],0
jne skip1
cmp win[1],0
jne skip1:
cmp win[2],0
jne skip1

 mov ah,2
 mov dl,0
 mov dh,3 
 int 10h
 
 mov ah,9
 mov dx,offset c
 int 21h
 inc user1score
 jmp done1
skip1:

cmp win[0],1
jne skip2
cmp win[1],1
jne skip2:
cmp win[2],1
jne skip2

 mov ah,2
 mov dl,0
 mov dh,3 
 int 10h
 
 mov ah,9
 mov dx,offset c
 int 21h
 inc user2score
 jmp done1
skip2:

cmp win[3],0
jne skip3
cmp win[4],0
jne skip3:
cmp win[5],0
jne skip3

 mov ah,2
 mov dl,0
 mov dh,11 
 int 10h
 
 mov ah,9
 mov dx,offset c
 int 21h
 inc user1score
 jmp done1
skip3:
       
cmp win[3],1
jne skip4
cmp win[4],1
jne skip4
cmp win[5],1
jne skip4

 mov ah,2
 mov dl,0
 mov dh,11 
 int 10h
 
 mov ah,9
 mov dx,offset c
 int 21h
 inc user2score
 jmp done1
skip4:


cmp win[6],0
jne skip5
cmp win[7],0
jne skip5
cmp win[8],0
jne skip5

 mov ah,2
 mov dl,0
 mov dh,19 
 int 10h
 
 mov ah,9
 mov dx,offset c
 int 21h
 inc user1score
 jmp done1
skip5:

cmp win[6],1
jne skip6
cmp win[7],1
jne skip6
cmp win[8],1
jne skip6

 mov ah,2
 mov dl,0
 mov dh,20 
 int 10h
 
 mov ah,9
 mov dx,offset c
 int 21h
 inc user2score
 jmp done1
skip6: 

cmp win[0],0
jne skip7
cmp win[3],0
jne skip7
cmp win[6],0
jne skip7


 
 mov counterdraw,0
 looop3:
 mov ah,9
 mov dx,offset swin
 int 21h
 mov ah,2
 inc counterdraw
 mov dh,counterdraw
 mov dl,13

 int 10h 
 

cmp counterdraw,25
jae  j
jmp looop3
j:
 inc user1score

 jmp done1
skip7:

cmp win[0],1
jne skip8
cmp win[3],1
jne skip8
cmp win[6],1
jne skip8


 
 mov counterdraw,0
 looop4:
 mov ah,9
 mov dx,offset swin
 int 21h
 mov ah,2
 inc counterdraw
 mov dh,counterdraw
 mov dl,13

 int 10h 
 

cmp counterdraw,25
jae  j1
jmp looop4
j1:
 inc user2score

 jmp done1
skip8: 

cmp win[1],0
jne skip9
cmp win[4],0
jne skip9
cmp win[7],0
jne skip9


 
 mov counterdraw,0
 looop5:
 mov ah,9
 mov dx,offset swin
 int 21h
 mov ah,2
 inc counterdraw
 mov dh,counterdraw
 mov dl,35

 int 10h 
 

cmp counterdraw,25
jae  j3
jmp looop5
j3:
 inc user1score

 jmp done1
skip9:

cmp win[1],1
jne skip10
cmp win[4],1
jne skip10
cmp win[7],1
jne skip10


 
 mov counterdraw,0
 looop6:
 mov ah,9
 mov dx,offset swin
 int 21h
 mov ah,2
 inc counterdraw
 mov dh,counterdraw
 mov dl,35

 int 10h 
 

cmp counterdraw,25
jae  j4
jmp looop6
j4:
 inc user2score
 
 jmp done1
skip10: 

cmp win[2],1
jne skip11
cmp win[5],1
jne skip11
cmp win[8],1
jne skip11


 
 mov counterdraw,0
 looop7:
 mov ah,9
 mov dx,offset swin
 int 21h
 mov ah,2
 inc counterdraw
 mov dh,counterdraw
 mov dl,65

 int 10h 
 

cmp counterdraw,25
jae  j5
jmp looop7
j5:
 inc user2score

 jmp done1
skip11:

cmp win[2],0
jne skip12
cmp win[5],0
jne skip12
cmp win[8],0
jne skip12


 
 mov counterdraw,0
 looop8:
 mov ah,9
 mov dx,offset swin
 int 21h
 mov ah,2
 inc counterdraw
 mov dh,counterdraw
 mov dl,65

 int 10h 
 

cmp counterdraw,25
jae  j6
jmp looop8
j6:
 inc user1score

 jmp done1
skip12:


cmp win[0],0
jne skip13
cmp win[4],0
jne skip13
cmp win[8],0
jne skip13


 
 mov counterdraw,0
 looop9:
 mov ah,9
 mov dx,offset swin2
 int 21h
 mov ah,2
 inc counterdraw 
 add drawdiagonal,3 
 add drawdiagonal2,10
 mov dh,drawdiagonal
 mov dl,drawdiagonal2
 
 int 10h 
 

cmp counterdraw,7
jae  j8
jmp looop9
j8:
 inc user1score

 jmp done1
skip13: 


cmp win[0],1
jne skip14
cmp win[4],1
jne skip14
cmp win[8],1
jne skip14


 mov drawdiagonal,0
 mov drawdiagonal2,0
 mov counterdraw,0
 looop10:
 mov ah,9
 mov dx,offset swin2
 int 21h
 mov ah,2
 inc counterdraw 
 add drawdiagonal,3 
 add drawdiagonal2,10
 mov dh,drawdiagonal
 mov dl,drawdiagonal2
 
 int 10h 
 

cmp counterdraw,7
jae  j9
jmp looop10
j9:
 inc user2score

 jmp done1
skip14:


cmp win[2],1
jne skip15
cmp win[4],1
jne skip15
cmp win[6],1
jne skip15


 mov drawdiagonal,0
 mov drawdiagonal2,80
 mov counterdraw,0
 looop11:
 mov ah,9
 mov dx,offset swin3
 int 21h
 mov ah,2
 inc counterdraw 
 add drawdiagonal,3 
 sub drawdiagonal2,10
 mov dh,drawdiagonal
 mov dl,drawdiagonal2
 
 int 10h 
 

cmp counterdraw,7
jae  j10
jmp looop11
j10:
 inc user2score

 jmp done1
skip15:



cmp win[2],0
jne skip16
cmp win[4],0
jne skip16
cmp win[6],0
jne skip16


 mov drawdiagonal,0
 mov drawdiagonal2,80
 mov counterdraw,0
 looop12:
 mov ah,9
 mov dx,offset swin3
 int 21h
 mov ah,2
 inc counterdraw 
 add drawdiagonal,3 
 sub drawdiagonal2,10
 mov dh,drawdiagonal
 mov dl,drawdiagonal2
 
 int 10h 
 

cmp counterdraw,7
jae  j12
jmp looop12
j12:
 inc user2score

 jmp done1
skip16:
    
    
    
    
  


mov cl,numcount
cmp cl,9
je done1


     jmp looop
     
     done1:
     mov ah,2
     mov dh,26
      mov dl,0
 
      int 10h     
      
     add user1score,30h
     add user2score,30h
     mov al,user2score  
     mov result1[35],al  
     mov al,user1score 
     mov result1[16],al
      mov ah,9
      mov dx,offset result1
      int 21h 
    
       run3:

       mov ax, 3
       int 33h     
       cmp bx, 0   
       je run3
       
       mov cx,9
       mov si,0
       push bx 
       mov bl,-1
       li:
         
         mov win[si],bl
         inc si
       loop li
       
     sub user1score,30h
     sub user2score,30h
     
    
       
       
       pop bx
       cmp bx,2 
       
       je top
       
     
     
     done2:
ret



proc xposition
run2:

mov ax, 3
int 33h     
cmp bx, 0   
je run2
                   
cmp cx,195
ja l13:  
cmp dx,60
ja l13:

call printx1

mov win[0],1 
jmp l21
l13:

cmp cx,195
jb l14
cmp cx,427
ja l14
cmp dx,60
ja l14
 
call printx2 
mov win[1],1
jmp l21
l14:

cmp cx,427
jb l15
cmp dx,60
ja l15

call printx3
mov win[2],1 
jmp l21

l15:


cmp cx,195
ja l16
cmp dx,60
jb l16
cmp dx,131
ja l16
 
call printx4
mov win[3],1 
jmp l21
l16:

cmp cx,195
jb l17
cmp cx,427
ja l17
cmp dx,60
jb l17
cmp dx,131
ja l17

call printx5
mov win[4],1 
jmp l21
l17:

cmp cx,427
jb l18
cmp dx,60
jb l18
cmp dx,131
ja l18

call printx6
mov win[5],1
jmp l21
l18:

cmp cx,195
ja l19
cmp dx,131
jb l19   
 
call printx7 
mov win[6],1
jmp l21
l19:

cmp cx,195
jb l20
cmp cx,427
ja l20
cmp dx,131
jb l20 

call printx8 
mov win[7],1
jmp l21

l20:

cmp dx,131
jb l21
cmp cx,427
jb l21

call printx9 
mov win[8],1
l21:    

    
ret 

endp 

proc oposition
run1:

mov ax, 3
int 33h     
cmp bx, 0   
je run1     
cmp cx,195
ja l:  
cmp dx,60
ja l:

call printo1 
mov win[0],0
jmp l12

l:

cmp cx,195
jb l5
cmp cx,427
ja l5
cmp dx,60
ja l5

call printo2 
mov win[1],0
jmp l12

l5:

cmp cx,427
jb l6
cmp dx,60
ja l6

call printo3 
mov win[2],0
jmp l12

l6:


cmp cx,195
ja l7
cmp dx,60
jb l7
cmp dx,131
ja l7

call printo4 
mov win[3],0
jmp l12
l7:

cmp cx,195
jb l8
cmp cx,427
ja l8
cmp dx,60
jb l8
cmp dx,131
ja l8

call printo5  
mov win[4],0
jmp l12
l8:

cmp cx,427
jb l9
cmp dx,60
jb l9
cmp dx,131
ja l9


call printo6 
mov win[5],0
jmp l12
l9:

cmp cx,195
ja l10
cmp dx,131
jb l10

call printo7
mov win[6],0 
jmp l12
l10:

cmp cx,195
jb l11   
cmp cx,427
ja l11
cmp dx,131
jb l11

call printo8 
mov win[7],0
jmp l12
l11:

cmp dx,131
jb l12
cmp cx,427
jb l12

call printo9 
mov win[8],0
l12:    

    
ret 

endp 



proc printx9
 mov ah,2
 mov dl,56
 mov dh,18 
 int 10h
 mov ah,9                                                                      
 mov dx,offset x1
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,19 
 int 10h
 
 mov ah,9
 mov dx,offset x2
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,20 
 int 10h
 
 mov ah,9
 mov dx,offset x3
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,21 
 int 10h   
 
 mov ah,9
 mov dx,offset x4
 int 21h    
 
 mov ah,2
 mov dl,56
 mov dh,22 
 int 10h
 
 mov ah,9
 mov dx,offset x5
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,23 
 int 10h
 
mov ah,9
 mov dx,offset x6
 int 21h
 
 
 
 ret
endp

proc printx8
    mov ah,2
 mov dl,26
 mov dh,18 
 int 10h
 mov ah,9
 mov dx,offset x1
 int 21h
 
 mov ah,2
 mov dl,26
 mov dh,19 
 int 10h
 
 mov ah,9
 mov dx,offset x2
 int 21h
 
 mov ah,2
 mov dl,26
 mov dh,20 
 int 10h
 
 mov ah,9
 mov dx,offset x3
 int 21h
 
 mov ah,2
 mov dl,26
 mov dh,21 
 int 10h   
 
 mov ah,9
 mov dx,offset x4
 int 21h    
 
 mov ah,2
 mov dl,26
 mov dh,21 
 int 10h
 
 mov ah,9
 mov dx,offset x5
 int 21h
 
 mov ah,2
 mov dl,26
 mov dh,22 
 int 10h
 
 mov ah,9
 mov dx,offset x6
 int 21h
 
 
 
 ret
endp 

proc printx7
    mov ah,2
 mov dl,0
 mov dh,18 
 int 10h
 mov ah,9
 mov dx,offset x1
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,19 
 int 10h
 
 mov ah,9
 mov dx,offset x2
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,20 
 int 10h
 
 mov ah,9
 mov dx,offset x3
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,21 
 int 10h   
 
 mov ah,9
 mov dx,offset x4
 int 21h    
 
 mov ah,2
 mov dl,0
 mov dh,22 
 int 10h
 
 mov ah,9
 mov dx,offset x5
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,23 
 int 10h
 
 mov ah,9
 mov dx,offset x6
 int 21h
 
 
 
 ret
endp 


proc printx6
    mov ah,2
 mov dl,56
 mov dh,9 
 int 10h
 mov ah,9
 mov dx,offset x1
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,10 
 int 10h
 
 mov ah,9
 mov dx,offset x2
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,11 
 int 10h
 
 mov ah,9
 mov dx,offset x3
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,12 
 int 10h   
 
 mov ah,9
 mov dx,offset x4
 int 21h    
 
 mov ah,2
 mov dl,56
 mov dh,13 
 int 10h
 
 mov ah,9
 mov dx,offset x5
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,14 
 int 10h
 
 mov ah,9
 mov dx,offset x6
 int 21h
 
 
 
 ret
endp 


proc printx5
    mov ah,2
 mov dl,27
 mov dh,9 
 int 10h
 mov ah,9
 mov dx,offset x1
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,10 
 int 10h
 
 mov ah,9
 mov dx,offset x2
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,11 
 int 10h
 
 mov ah,9
 mov dx,offset x3
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,12 
 int 10h   
 
 mov ah,9
 mov dx,offset x4
 int 21h    
 
 mov ah,2
 mov dl,27
 mov dh,13 
 int 10h
 
 mov ah,9
 mov dx,offset x5
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,14 
 int 10h
 
 mov ah,9
 mov dx,offset x6
 int 21h
 
 
 
 ret
endp 


proc printx4
    mov ah,2
 mov dl,0
 mov dh,9 
 int 10h
 mov ah,9
 mov dx,offset x1
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,10 
 int 10h
 
 mov ah,9
 mov dx,offset x2
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,11 
 int 10h
 
 mov ah,9
 mov dx,offset x3
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,12 
 int 10h   
 
 mov ah,9
 mov dx,offset x4
 int 21h    
 
 mov ah,2
 mov dl,0
 mov dh,13 
 int 10h
 
 mov ah,9
 mov dx,offset x5
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,14 
 int 10h
 
 mov ah,9
 mov dx,offset x6
 int 21h
 
 
 
 ret
endp 




proc printx3
    mov ah,2
 mov dl,56
 mov dh,0 
 int 10h
 mov ah,9
 mov dx,offset x1
 int 21h
   
 mov ah,2
 mov dl,56
 mov dh,1 
 int 10h
 
 mov ah,9
 mov dx,offset x2
 int 21h
 
 
 mov ah,2
 mov dl,56
 mov dh,2 
 int 10h
 
 mov ah,9
 mov dx,offset x3
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,3 
 int 10h   
 
 mov ah,9
 mov dx,offset x4
 int 21h    
 
 mov ah,2
 mov dl,56
 mov dh,4 
 int 10h
 
 mov ah,9
 mov dx,offset x5
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,5 
 int 10h
 
 mov ah,9
 mov dx,offset x6
 int 21h
 
 
 
 ret
endp 


proc printx2
    mov ah,2
 mov dl,27
 mov dh,0 
 int 10h
 mov ah,9
 mov dx,offset x1
 int 21h
   
 mov ah,2
 mov dl,27
 mov dh,1 
 int 10h
 
 mov ah,9
 mov dx,offset x2
 int 21h
 
 
 mov ah,2
 mov dl,27
 mov dh,2 
 int 10h
 
 mov ah,9
 mov dx,offset x3
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,3 
 int 10h   
 
 mov ah,9
 mov dx,offset x4
 int 21h    
 
 mov ah,2
 mov dl,27
 mov dh,4 
 int 10h
 
 mov ah,9
 mov dx,offset x5
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,5 
 int 10h
 
 mov ah,9
 mov dx,offset x6
 int 21h
 
 
 
 ret
endp 

        

proc printx1
    mov ah,2
 mov dl,0
 mov dh,0 
 int 10h
 mov ah,9
 mov dx,offset x1
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,1 
 int 10h
 
 mov ah,9
 mov dx,offset x2
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,2 
 int 10h
 
 mov ah,9
 mov dx,offset x3
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,3 
 int 10h   
 
 mov ah,9
 mov dx,offset x4
 int 21h    
 
 mov ah,2
 mov dl,0
 mov dh,4 
 int 10h
 
 mov ah,9
 mov dx,offset x5
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,5 
 int 10h
 
 mov ah,9
 mov dx,offset x6
 int 21h
 
 
 
 ret
endp 


proc printo9
    mov ah,2
 mov dl,56
 mov dh,17 
 int 10h
 mov ah,9
 mov dx,offset o1
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,18 
 int 10h
 
 mov ah,9
 mov dx,offset o2
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,19 
 int 10h
 
 mov ah,9
 mov dx,offset o3
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,20 
 int 10h   
 
 mov ah,9
 mov dx,offset o4
 int 21h    
 
 mov ah,2
 mov dl,56
 mov dh,21 
 int 10h
 
 mov ah,9
 mov dx,offset o5
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,22 
 int 10h
 
 mov ah,9
 mov dx,offset o6
 int 21h
 
 
 
 ret
endp

proc printo8
    mov ah,2
 mov dl,26
 mov dh,17 
 int 10h
 mov ah,9
 mov dx,offset o1
 int 21h
 
 mov ah,2
 mov dl,26
 mov dh,18 
 int 10h
 
 mov ah,9
 mov dx,offset o2
 int 21h
 
 mov ah,2
 mov dl,26
 mov dh,19 
 int 10h
 
 mov ah,9
 mov dx,offset o3
 int 21h
 
 mov ah,2
 mov dl,26
 mov dh,20 
 int 10h   
 
 mov ah,9
 mov dx,offset o4
 int 21h    
 
 mov ah,2
 mov dl,26
 mov dh,21 
 int 10h
 
 mov ah,9
 mov dx,offset o5
 int 21h
 
 mov ah,2
 mov dl,26
 mov dh,22 
 int 10h
 
 mov ah,9
 mov dx,offset o6
 int 21h
 
 
 
 ret
endp 

proc printo7
    mov ah,2
 mov dl,0
 mov dh,17 
 int 10h
 mov ah,9
 mov dx,offset o1
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,18 
 int 10h
 
 mov ah,9
 mov dx,offset o2
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,19 
 int 10h
 
 mov ah,9
 mov dx,offset o3
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,20 
 int 10h  
 
 mov ah,9
 mov dx,offset o4
 int 21h    
 
 mov ah,2
 mov dl,0
 mov dh,21 
 int 10h
 
 mov ah,9
 mov dx,offset o5
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,22 
 int 10h
 
 mov ah,9
 mov dx,offset o6
 int 21h
 
 
 
 ret
endp 


proc printo6
    mov ah,2
 mov dl,56
 mov dh,9 
 int 10h
 mov ah,9
 mov dx,offset o1
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,10 
 int 10h
 
 mov ah,9
 mov dx,offset o2
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,11 
 int 10h
 
 mov ah,9
 mov dx,offset o3
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,12 
 int 10h   
 
 mov ah,9
 mov dx,offset o4
 int 21h    
 
 mov ah,2
 mov dl,56
 mov dh,13 
 int 10h
 
 mov ah,9
 mov dx,offset o5
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,14 
 int 10h
 
 mov ah,9
 mov dx,offset o6
 int 21h
 
 
 
 ret
endp 


proc printo5
    mov ah,2
 mov dl,27
 mov dh,9 
 int 10h
 mov ah,9
 mov dx,offset o1
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,10 
 int 10h
 
 mov ah,9
 mov dx,offset o2
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,11 
 int 10h
 
 mov ah,9
 mov dx,offset o3
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,12 
 int 10h   
 
 mov ah,9
 mov dx,offset o4
 int 21h    
 
 mov ah,2
 mov dl,27
 mov dh,13 
 int 10h
 
 mov ah,9
 mov dx,offset o5
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,14 
 int 10h
 
 mov ah,9
 mov dx,offset o6
 int 21h
 
 
 
 ret
endp 


proc printo4
    mov ah,2
 mov dl,0
 mov dh,9 
 int 10h
 mov ah,9
 mov dx,offset o1
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,10 
 int 10h
 
 mov ah,9
 mov dx,offset o2
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,11 
 int 10h
 
 mov ah,9
 mov dx,offset o3
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,12 
 int 10h   
 
 mov ah,9
 mov dx,offset o4
 int 21h    
 
 mov ah,2
 mov dl,0
 mov dh,13 
 int 10h
 
 mov ah,9
 mov dx,offset o5
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,14 
 int 10h
 
 mov ah,9
 mov dx,offset o6
 int 21h
 
 
 
 ret
endp 




proc printo3
    mov ah,2
 mov dl,56
 mov dh,0 
 int 10h
 mov ah,9
 mov dx,offset o1
 int 21h
   
 mov ah,2
 mov dl,56
 mov dh,1 
 int 10h
 
 mov ah,9
 mov dx,offset o2
 int 21h
 
 
 mov ah,2
 mov dl,56
 mov dh,2 
 int 10h
 
 mov ah,9
 mov dx,offset o3
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,3 
 int 10h   
 
 mov ah,9
 mov dx,offset o4
 int 21h    
 
 mov ah,2
 mov dl,56
 mov dh,4 
 int 10h
 
 mov ah,9
 mov dx,offset o5
 int 21h
 
 mov ah,2
 mov dl,56
 mov dh,5 
 int 10h
 
 mov ah,9
 mov dx,offset o6
 int 21h
 
 
 
 ret
endp 


proc printo2
    mov ah,2
 mov dl,27
 mov dh,0 
 int 10h
 mov ah,9
 mov dx,offset o1
 int 21h
   
 mov ah,2
 mov dl,27
 mov dh,1 
 int 10h
 
 mov ah,9
 mov dx,offset o2
 int 21h
 
 
 mov ah,2
 mov dl,27
 mov dh,2 
 int 10h
 
 mov ah,9
 mov dx,offset o3
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,3 
 int 10h   
 
 mov ah,9
 mov dx,offset o4
 int 21h    
 
 mov ah,2
 mov dl,27
 mov dh,4 
 int 10h
 
 mov ah,9
 mov dx,offset o5
 int 21h
 
 mov ah,2
 mov dl,27
 mov dh,5 
 int 10h
 
 mov ah,9
 mov dx,offset o6
 int 21h
 
 
 
 ret
endp 



proc printo1
    mov ah,2
 mov dl,0
 mov dh,0 
 int 10h
 mov ah,9
 mov dx,offset o1
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,1 
 int 10h
 
 mov ah,9
 mov dx,offset o2
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,2 
 int 10h
 
 mov ah,9
 mov dx,offset o3
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,3 
 int 10h   
 
 mov ah,9
 mov dx,offset o4
 int 21h    
 
 mov ah,2
 mov dl,0
 mov dh,4 
 int 10h
 
 mov ah,9
 mov dx,offset o5
 int 21h
 
 mov ah,2
 mov dl,0
 mov dh,5 
 int 10h
 
 mov ah,9
 mov dx,offset o6
 int 21h
 
 
 
 ret
endp 



 
 
   
   
proc draw
    
mov counter,0   

l2:



mov dX,OFFSET a
mov ah,9
int 21h
inc counter
mov al,counter
cmp al,8
jne s1
mov dx,offset c
mov ah,9
int 21h
s1:
cmp al,16
jne s2
mov dx,offset c
mov ah,9
int 21h
s2:
 
 
cmp al,23 
jz d
 

jmp l2 

d: 




   
    
   ret 
endp





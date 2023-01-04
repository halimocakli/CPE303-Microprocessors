; COM Template : Bir Diziyi Diger Diziye Kopyalama

org 100h

; Oncelikle numbers_1 ve numbers_2 dizilerinin RAM'deki adresine ulasalim.
LEA BX, numbers_1
LEA BP, numbers_2 

MOV SI, 0
MOV CX, 4

looping:
    MOV AL, [BX + SI]
    MOV [BP + SI], AL
    INC SI
    
    LOOP looping

ret
   
numbers_1 DB 2, 3, 5, 7   
numbers_2 DB 4 dup(?)   ; 4 Byte Bosluk
   
end





; LEA Command Exercise
; LEA operand_1, operand_2 : operand_2'nin adresini operand_1'e aktarir.
; Derleyici, LEA komutunu MOV komutu ile calisma zamaninda gerceklestirir.
; Baslangic adres tutuculari [BX, BP] ve indeks kaydedicileri [SI, DI] kullanilmalidir.
; MOV operand_1, offset operand_2 ifadesi ile ayni gorevi yerine getirir.

org 100h   

MOV SI, 0000H

LEA BX, numbers_db     ;numbers sayi dizisinin adresi BX'e atandi.
MOV AL, [BX]           ;AL kaydedicisine BX icesindeki deger atandi.
INC SI
MOV AL, [BX + SI] 
INC SI
MOV AL, [BX + 2]
INC SI
MOV AL, [BX + 3]

MOV SI, 0000H
MOV BX, 0000H

LEA BX, numbers_dw
MOV AH, [BX+ SI]
ADD SI, 0002H                             
MOV AH, [BX + SI]
ADD SI, 0002H 
MOV AH, [BX + SI]
ADD SI, 0002H 
MOV AH, [BX + SI]

ret

numbers_db DB 1, 2, 3, 4   
numbers_dw DW 10H, 20H, 30H, 40H
   
end





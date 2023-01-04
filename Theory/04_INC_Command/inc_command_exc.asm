;INC operand_1 : INC komutu, operand_1 icerisindeki degeri arttirir.
;operand = operand + 1
;CARRY FLAG bu komuttan etkilenmez.
;Immediate degerlerde INC komutu uygulanmaz : INC 12H
;ZF, SF, OF, PF, AF Flag'leri etkilenir.

org 100h

MOV AL, 4
INC AL
INC number
MOV AL, number

MOV BX, offset number
INC [BX]
INC [BX]
INC [BX]  
INC [BX]
MOV AL, number

ret
   
number DB 28H   
   
end





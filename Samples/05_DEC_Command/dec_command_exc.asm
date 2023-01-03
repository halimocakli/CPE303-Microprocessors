
; DEC operand_1 : DEC komutu, operand_1 degerini 1 azaltir.
; operand = operand - 1
; CARRY FLAG bu komuttan etkilenmez
; Immediate degerlerde azaltma islemi uygulanamaz : DEC 28H
; ZF, SF, OF, PF, AF Flag'leri etkilenir.

org 100h

MOV AL, 4
DEC AL
DEC number
MOV AL, number

MOV BX, offset number
DEC [BX]
DEC [BX]
DEC [BX]  
DEC [BX]
MOV AL, number

ret
   
number DB 28H   
   
end







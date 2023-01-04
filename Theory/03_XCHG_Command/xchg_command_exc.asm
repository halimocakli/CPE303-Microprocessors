
; XCHG operand_1, operand_2 : operand_1 ile operand_2'de tutulan degerleri yer degistirir.

org 100h

MOV AL, 2
MOV AH, 3

XCHG AL, AH

MOV BX, 8000H
XCHG BX, number

MOV CX, number

ret

number DW 0008H

end                          





; JMP operand_1 : operand_1 bir etikettir. Programda istenilen yere atlamak icin kullanilir. 
; Etiket 4 Byte boyutunda bir adres olabilir (1234H)

org 100h

MOV AL, 5
JMP jump

continue:

ret     ; Returning to OS, AL remains as 6

jump:

MOV AL, 6
JMP continue




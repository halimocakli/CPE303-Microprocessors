; MOV Command Exercise

org 100h

MOV AL, 0CH     ;IMMEDIATE
MOV AH, 0AFH    ;IMMEDIATE 
MOV BX, AX      ;REGISTER

MOV DH, 8H
MOV DX, 18H  

MOV AL, first_number
MOV AH, second_number
MOV AX, third_number


ret

first_number DB 12H
second_number DB 0FFH
third_number DW 0AAFFH

end




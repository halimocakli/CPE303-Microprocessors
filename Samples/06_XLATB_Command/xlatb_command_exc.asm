; XLATB Komutu herhangi bir operand almaz.

org 100h

; BX Taban adres
; AL, istenilen elemanin sirasi

LEA BX, numbers
MOV AL, 1

XLATB ; AL'ye 14 atandi.

ret

numbers DB 12H, 14H, 16H, 18H

end





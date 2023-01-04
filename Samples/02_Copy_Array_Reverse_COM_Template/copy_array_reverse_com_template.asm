; COM Template : Bir Diziyi Diger Diziye Tersten Kopyalama

org 100h

LEA BX, name_arr
LEA BP, reverse_name_arr

                                          
; Halim Can Ocakli -> ilkacO naC milah  

MOV SI, 15  ; name_arr dizisinin son elemaninin indeksi
MOV DI, 0   ; reverse_name_arr dizisinin ilk elemaninin indeksi
MOV CX, 16  ; dongu sayisi

looping:
    MOV AX, [BX + SI]   ; AX'e name_arr dizisinin son elemanini ata
    MOV [BP + DI], AX   ; reverse_name_arr dizisine AX'i ekle
    
    INC DI
    DEC SI
    LOOP looping

ret

name_arr DB "Halim Can Ocakli"
reverse_name_arr DB 16 dup(?) 

end
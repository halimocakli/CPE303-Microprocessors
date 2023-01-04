
; LOOP operand_1 : operand_1 bir etikettir. Tekrarlamasini istediginiz islemler icin kullanilir.
; CX kaydedicisi, dongunun kac kere donecegini yani kodlarin kac kere calistirilacagini belirler.
; Bunun icin CX'e bir tekrar sayisinin atanmasi gerekir.   
; Her LOOP komutu, CX'in degerini 1 azaltir.
; Dongu CX = 0 olana kadar tekrar eder.

org 100h

MOV AL, 0
MOV CX, 3

looping:
    INC AL
    LOOP looping
    
; Dongu sonunda AL 3 olur.

ret





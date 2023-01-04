; index_arr DB 1, 2, 3, 4, 5, 6, 7, 8, 9
; numbers_arr 7H, 8H, 9H, 0AH, 0BH, 0CH, 0DH, 0EH, 0FH
; target_arr DB 9 dup(?)

; XLATB komutunu kullanarak "index_arr" dizisi icerisinde bulunan elemanlara gore "numbers_arr" dizisi 
; icerisindeki elemanlari "target_arr" dizisine ekleme islemini gerceklestiren programi yaziniz.

data SEGMENT     
    
    index_arr DB 8, 7, 6, 5, 4, 2, 2, 1, 0
    numbers_arr DB 7H, 8H, 9H, 0AH, 0BH, 0CH, 0DH, 0EH, 0FH
    target_arr DB 9 dup(?)  
    
ENDS                         

stack SEGMENT
    DW   128  dup(0)
ENDS

code SEGMENT
start:
    ; set segment registers:
    MOV AX, data
    MOV DS, AX

    ; add your code here 
    
    MOV CX, 9                       ; Dongu sayisini CX kaydedicisinde tutuyoruz.
    MOV SI, 0                       ; SI kaydedicisi dizi indeksi olarak gorev aliyor.
    
    LEA BX, numbers_arr             ; BX kaydedicisi kaynak dizinin taban adresini tutuyor.
    
    
    looping:
        MOV AL, index_arr + SI      ; AL'ye numbers_arr dizisinden kopyalayacagimiz elemanin indeks degeri atanir. 
        XLATB                       ; AL'ye atanan indeks degerine esdeger numbers_arr elemani AL'ye atanir.
        MOV target_arr + SI, AL     ; AL icerisindeki deger target_arr dizisinin SI indeksine atanir.                                                                                 
        INC SI                      ; SI arttirilir.                                                                                              
        LOOP looping                ; CX degeri 0 olana kadar dongu devam eder.                                    
        
        
    MOV AX, 4C00H                   ; exit to operating system.
    INT 21H    
ENDS

end start                           ; set entry point and stop the assembler.

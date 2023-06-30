.8086 
.model small
.stack 100h 

.data
    error1_txt db "Error en la apertura de txt","$"
    error2_txt db "Error en la lectura de txt", "$" 
    archivo2_txt db "historia.txt","$"  
    handler dw ?   
    contador_char db 0
    ;-----Para 12 lineas 
    ;cantidad_lineas dw 12
    ;valor_linea_final dw 1100  
    ;-----
    ;-----Para 100 lineas: Verificar que en el txt hayan 100 lineas 
    cantidad_lineas dw 100
    valor_linea_final dw 9900  
    ;-----
    respuesta db ?
    correcto db "CORRECTO",0dh, 0ah,"$" 
    incorrecto db "INCORRECTO",0dh, 0ah,"$" 

;lineas
    linea01 db 97 dup("$"),0dh,0ah,"$" 
    linea02 db 97 dup("$"),0dh,0ah,"$" 
    linea03 db 97 dup("$"),0dh,0ah,"$" 
    linea04 db 97 dup("$"),0dh,0ah,"$" 
    linea05 db 97 dup("$"),0dh,0ah,"$" 
    linea06 db 97 dup("$"),0dh,0ah,"$" 
    linea07 db 97 dup("$"),0dh,0ah,"$" 
    linea08 db 97 dup("$"),0dh,0ah,"$" 
    linea09 db 97 dup("$"),0dh,0ah,"$" 
    linea10 db 97 dup("$"),0dh,0ah,"$" 
    linea11 db 97 dup("$"),0dh,0ah,"$" 
    linea12 db 97 dup("$"),0dh,0ah,"$" 
    linea13 db 97 dup("$"),0dh,0ah,"$" 
    linea14 db 97 dup("$"),0dh,0ah,"$" 
    linea15 db 97 dup("$"),0dh,0ah,"$" 
    linea16 db 97 dup("$"),0dh,0ah,"$" 
    linea17 db 97 dup("$"),0dh,0ah,"$" 
    linea18 db 97 dup("$"),0dh,0ah,"$" 
    linea19 db 97 dup("$"),0dh,0ah,"$" 
    linea20 db 97 dup("$"),0dh,0ah,"$" 
    linea21 db 97 dup("$"),0dh,0ah,"$" 
    linea22 db 97 dup("$"),0dh,0ah,"$" 
    linea23 db 97 dup("$"),0dh,0ah,"$" 
    linea24 db 97 dup("$"),0dh,0ah,"$" 
    linea25 db 97 dup("$"),0dh,0ah,"$" 
    linea26 db 97 dup("$"),0dh,0ah,"$" 
    linea27 db 97 dup("$"),0dh,0ah,"$" 
    linea28 db 97 dup("$"),0dh,0ah,"$" 
    linea29 db 97 dup("$"),0dh,0ah,"$" 
    linea30 db 97 dup("$"),0dh,0ah,"$" 
    linea31 db 97 dup("$"),0dh,0ah,"$" 
    linea32 db 97 dup("$"),0dh,0ah,"$" 
    linea33 db 97 dup("$"),0dh,0ah,"$" 
    linea34 db 97 dup("$"),0dh,0ah,"$" 
    linea35 db 97 dup("$"),0dh,0ah,"$" 
    linea36 db 97 dup("$"),0dh,0ah,"$" 
    linea37 db 97 dup("$"),0dh,0ah,"$" 
    linea38 db 97 dup("$"),0dh,0ah,"$" 
    linea39 db 97 dup("$"),0dh,0ah,"$" 
    linea40 db 97 dup("$"),0dh,0ah,"$" 
    linea41 db 97 dup("$"),0dh,0ah,"$" 
    linea42 db 97 dup("$"),0dh,0ah,"$" 
    linea43 db 97 dup("$"),0dh,0ah,"$" 
    linea44 db 97 dup("$"),0dh,0ah,"$" 
    linea45 db 97 dup("$"),0dh,0ah,"$" 
    linea46 db 97 dup("$"),0dh,0ah,"$" 
    linea47 db 97 dup("$"),0dh,0ah,"$" 
    linea48 db 97 dup("$"),0dh,0ah,"$" 
    linea49 db 97 dup("$"),0dh,0ah,"$" 
    linea50 db 97 dup("$"),0dh,0ah,"$" 
    linea51 db 97 dup("$"),0dh,0ah,"$" 
    linea52 db 97 dup("$"),0dh,0ah,"$" 
    linea53 db 97 dup("$"),0dh,0ah,"$" 
    linea54 db 97 dup("$"),0dh,0ah,"$" 
    linea55 db 97 dup("$"),0dh,0ah,"$" 
    linea56 db 97 dup("$"),0dh,0ah,"$" 
    linea57 db 97 dup("$"),0dh,0ah,"$" 
    linea58 db 97 dup("$"),0dh,0ah,"$" 
    linea59 db 97 dup("$"),0dh,0ah,"$" 
    linea60 db 97 dup("$"),0dh,0ah,"$" 
    linea61 db 97 dup("$"),0dh,0ah,"$" 
    linea62 db 97 dup("$"),0dh,0ah,"$" 
    linea63 db 97 dup("$"),0dh,0ah,"$" 
    linea64 db 97 dup("$"),0dh,0ah,"$" 
    linea65 db 97 dup("$"),0dh,0ah,"$" 
    linea66 db 97 dup("$"),0dh,0ah,"$" 
    linea67 db 97 dup("$"),0dh,0ah,"$" 
    linea68 db 97 dup("$"),0dh,0ah,"$" 
    linea69 db 97 dup("$"),0dh,0ah,"$" 
    linea70 db 97 dup("$"),0dh,0ah,"$" 
    linea71 db 97 dup("$"),0dh,0ah,"$" 
    linea72 db 97 dup("$"),0dh,0ah,"$" 
    linea73 db 97 dup("$"),0dh,0ah,"$" 
    linea74 db 97 dup("$"),0dh,0ah,"$" 
    linea75 db 97 dup("$"),0dh,0ah,"$" 
    linea76 db 97 dup("$"),0dh,0ah,"$" 
    linea77 db 97 dup("$"),0dh,0ah,"$" 
    linea78 db 97 dup("$"),0dh,0ah,"$" 
    linea79 db 97 dup("$"),0dh,0ah,"$" 
    linea80 db 97 dup("$"),0dh,0ah,"$" 
    linea81 db 97 dup("$"),0dh,0ah,"$" 
    linea82 db 97 dup("$"),0dh,0ah,"$" 
    linea83 db 97 dup("$"),0dh,0ah,"$" 
    linea84 db 97 dup("$"),0dh,0ah,"$" 
    linea85 db 97 dup("$"),0dh,0ah,"$" 
    linea86 db 97 dup("$"),0dh,0ah,"$" 
    linea87 db 97 dup("$"),0dh,0ah,"$" 
    linea88 db 97 dup("$"),0dh,0ah,"$" 
    linea89 db 97 dup("$"),0dh,0ah,"$" 
    linea90 db 97 dup("$"),0dh,0ah,"$" 
    linea91 db 97 dup("$"),0dh,0ah,"$" 
    linea92 db 97 dup("$"),0dh,0ah,"$" 
    linea93 db 97 dup("$"),0dh,0ah,"$" 
    linea94 db 97 dup("$"),0dh,0ah,"$" 
    linea95 db 97 dup("$"),0dh,0ah,"$" 
    linea96 db 97 dup("$"),0dh,0ah,"$" 
    linea97 db 97 dup("$"),0dh,0ah,"$" 
    linea98 db 97 dup("$"),0dh,0ah,"$" 
    linea99 db 97 dup("$"),0dh,0ah,"$" 
    linea100 db 97 dup("$"),0dh,0ah,"$" 
;fin lineas

    
.code 
    public copiar_txt_a_variables
    public imprimir_preguntas 

    copiar_txt_a_variables proc 
            push ax 
            push dx
            push cx 
            push si 
            push bp 
                ;--- Abrir archivo --- 
                mov ah, 3dh 
                mov al, 00h ;indicar apertura de archivo en modo lectura. 
                lea dx, archivo2_txt
                int 21h 
                jc error1 ;Error de apertura de archivo. 
                mov handler, ax ; 
                
                ;-- Leer archivo
                ;Iterar para que escriba cada variable linea0n. 
                lea si, linea01
                mov bp, 0 
            
            escribir_linea:
                mov contador_char, 0
                ;Escribir total de lineas
                cmp bp, cantidad_lineas
                je salir_escribir_linea 
                
            escribir_caracter:
                mov ah, 3fh 
                mov bx, handler
                mov cx, 1
                mov dx, si  ;Buffer para la data. 
                int 21h 
                jc error2 ;Error lectura de archivo. 
                ;Pasa a la siguiente linea

                ;Compara caracter con salto de linea. 
                mov dl, [si]
                cmp dl, 0ah 
                jne escribir_siguiente_caracter
                
                xor ax, ax 
                mov al, contador_char
                sub si, ax 
                add si, 100       
                inc bp 
                jmp escribir_linea

                escribir_siguiente_caracter:
                    inc si
                    inc contador_char
                    jmp escribir_caracter
            ;--- Cerrar archivo --- 
            salir_escribir_linea:
            end_of_file:
                mov ah, 3eh 
                mov bx, handler 
                int 21h 
                jmp fin
        error1: 
                mov ah, 09h 
                lea dx, error1_txt
                int 21h 
                jmp fin 
        error2: 
            mov ah, 09h 
            lea dx, error2_txt
            int 21h
            jmp fin  
        fin: 
            pop bp 
            pop si 
            pop cx 
            pop dx
            pop ax 
            ret 
    copiar_txt_a_variables endp  

    imprimir_preguntas proc
        ;Recibe como parametro el offset de la linea a leer. 
        push ax 
        push dx 
        push si 
        push cx
        push bx  
        
        lea si, linea01 ;arrancamos en posición 0
        
        ;Mostar solamente preguntas. 
        mostrar_otra_pregunta: 
        mov cx, 0
        ciclo_lectura:
            cmp cx, 5 
            je fin_ciclo_lectura
            mov ah, 09h 
            mov dx, si  ;Pasamos offset de la linea a mostrar. 
            int 21h
            add si, 100 ;Pasar a la siguiente linea 
            inc cx 
            jmp ciclo_lectura
        fin_ciclo_lectura: ;llega hasta la respuesta. 
        

        ingresar_otro_char:
            ;Ingreso de respuesta por el usuario
            mov ah, 00h ;retorna en al el ascii 
            int 16h 
            
            cmp al, "a"
            je chequear_respuesta
            cmp al, "b"
            je chequear_respuesta
            cmp al, "c"        
            je chequear_respuesta
            cmp al, "d"
            je chequear_respuesta

            jmp ingresar_otro_char
        
            chequear_respuesta:
                ;Obtengo la respuesta  
                mov bl, [si]
                mov respuesta, bl 

                ;Comparamos respuesta con el valor ingresado por el usuario
                cmp al, respuesta
                je respuesta_correcta

                jmp respuesta_incorrecta

            respuesta_correcta:
                mov ah, 9
                lea dx, correcto
                int 21h 
                
                ;Comparo si llego a la linea final, si es asi, ya no hay preguntas. 
                lea di, linea01 ;Obtengo el inicio de la linea. 
                mov ax, si      ;Obtengo la linea actual. 
                sub ax, valor_linea_final     ;Le resto el total de lineas 
                cmp ax, di      ;Si es igual al inicio, ya no hay respuestas. Dejo de leer.
                je final_preguntas

                add si, 100 ;Paso a la siguiente pregunta. 
                jmp mostrar_otra_pregunta
            
            respuesta_incorrecta:
                mov ah, 9
                lea dx, incorrecto
                int 21h 
                jmp fin_chequeo

            final_preguntas:
            fin_chequeo:
                pop bx  
                pop cx 
                pop si
                pop dx 
                pop ax 
                ret 
    imprimir_preguntas endp



    ; num_random proc 
    ;     ;Retornará un número aleatorio en AL
    ;     push cx
    ;     push dx
	; 	pushf
   
    ;     mov ah, 2ch ;Solicitará el tiempo del sistema. 
    ;     int 21h
    ;     xor ax, ax  
	; 	mov al, dl  ;En dl obtengo un valor aleatorio entre 0 y 99 
    ;     mov cl, 15h    
    ;     div cl ;Divido por 21 para obtener el cociente en al (num aleatorio). 
    ;     xor ah, ah  
		
	; 	popf 
    ;     pop dx
    ;     pop cx
    ;     ret
    ; num_random endp 

   

end 
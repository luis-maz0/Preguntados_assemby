.8086
.model small
.stack 100h

.data   
    ;Textos 
    texto_titulo_principal db "BIENVENIDOS AL PREGUNTADOS ASSEMBLICO", "$"
    texto_introduccion db "En este juego debera responder preguntasacerca de muchas tematicas.",0ah,0dh,"Trata de superar tu record",0ah,0ah,0dh,"$"
    texto_inicio_juego db "Hora de jugar!!!","$"
    texto_puntos db "000","$"

.code

extrn imprimir_preguntas:proc 
extrn copiar_txt_a_variables:proc
extrn limpiar_pantalla:proc
extrn centrar_texto:proc
extrn agregar_delay:proc 
extrn mostrar_cartel:proc 
extrn reg_to_ascii:proc 

main proc 
        mov ax, @data
        mov ds, ax 
        
        ;Limpiar y mostrar texto_titulo_principal centrado   
        call limpiar_pantalla
        mov ch, 0cH ;ch: fila
        mov cl, 01h ;cl: columna
        push cx 
        call centrar_texto
        lea bx, texto_titulo_principal 
        push bx 
        call mostrar_cartel
        
        call agregar_delay ;Detendra la ejecución del programa principal por 2 segundos aprox. 
        call limpiar_pantalla  ;Limpiar y mostrar introducción al juego
        
        mov ch, 0cH
        mov cl, 00h 
        push cx 
        call centrar_texto
        lea bx, texto_introduccion
        push bx 
        call mostrar_cartel
        
        ;Texto de ingreso de tecla
        call agregar_delay
        call limpiar_pantalla

        mov ch, 08H 
        mov cl, 05h 
        push cx 
        call centrar_texto
        lea bx, texto_inicio_juego
        push bx 
        call mostrar_cartel

        call agregar_delay
        call limpiar_pantalla
        
        mov ch, 0cH
        mov cl, 00h 
        push cx 
        call centrar_texto
        call copiar_txt_a_variables
        call imprimir_preguntas
        mov dx, bp
        lea bx, texto_puntos  
        call reg_to_ascii

        call agregar_delay
        call limpiar_pantalla

        mov ch, 08H 
        mov cl, 05h 
        push cx 
        call centrar_texto
        lea bx, texto_puntos
        push bx 
        call mostrar_cartel
        
        mov ax, 4c00h 
        int 21h 
    main endp 
end 
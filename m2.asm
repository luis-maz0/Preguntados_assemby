.8086
.model small
.stack 100h

.data   
  

.code
extrn imprimir_preguntas:proc 
extrn copiar_txt_a_variables:proc

main proc 
        mov ax, @data
        mov ds, ax 
        
        call copiar_txt_a_variables
        call imprimir_preguntas
        
        mov ax, 4c00h 
        int 21h 
    main endp 
end 
;Materia: Lenguajes de Interfaz
;Alumno: Oscar Javier Chaidez Salazar
;Horario: 9 Am - 10 Am
;Docente: Dr. José Luis Medina Jiménez
;Práctica: PRACTICA 2.
;Descripción: Muestra cómo funciona el stack y las direcciones de retorno leyendo directamente la cima de la pila

INCLUDE Irvine32.inc

.data
    ; No se necesitan variables: se examina la pila directamente

.code
main PROC
    ; Leer el valor actual en la cima de la pila (no necesariamente
    ; es una dirección de retorno de un procedimiento propio)
    mov eax, [esp]
    call WriteHex
    call Crlf

    ; CALL coloca en la pila la dirección a la que debe regresar
    call procUno
    exit
main ENDP

procUno PROC
    ; Aquí [esp] contiene la dirección de retorno hacia main
    mov eax, [esp]
    call WriteHex
    call Crlf

    ; La llamada siguiente coloca otra dirección de retorno
    call procDos
    ret
procUno ENDP

procDos PROC
    ; Aquí [esp] contiene la dirección de retorno hacia procUno
    mov eax, [esp]
    call WriteHex
    call Crlf
    ret
procDos ENDP
END main

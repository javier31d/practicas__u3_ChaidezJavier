;Materia: Lenguajes de Interfaz
;Alumno: Oscar Javier Chaidez Salazar
;Horario: 9 Am - 10 Am
;Docente: Dr. José Luis Medina Jiménez
;Práctica: PRACTICA 3.
;Descripción: Solicita una cadena de texto al usuario y valida si está vacía o no

INCLUDE Irvine32.inc

.data
    ; Reserva de 50 bytes para la cadena, incluido el cero final
    cadena BYTE 50 DUP(0)
    msgPedir BYTE "Ingresa una cadena (o presiona Enter para dejarla vacia): ", 0
    msgVacia BYTE "La cadena ESTA vacia.", 0
    msgNoVacia BYTE "La cadena NO esta vacia.", 0

.code
main PROC
    ; Solicitar la cadena al usuario
    mov edx, OFFSET msgPedir
    call WriteString

    ; ReadString escribe en cadena y añade un cero al final.
    ; ECX indica el máximo de caracteres, dejando espacio para ese cero.
    mov edx, OFFSET cadena
    mov ecx, SIZEOF cadena - 1
    call ReadString

    ; Si el primer byte es cero, la cadena está vacía
    cmp BYTE PTR [cadena], 0
    je EsVacia

NoEsVacia:
    mov edx, OFFSET msgNoVacia
    call WriteString
    call Crlf
    jmp Fin

EsVacia:
    mov edx, OFFSET msgVacia
    call WriteString
    call Crlf

Fin:
    exit
main ENDP
END main

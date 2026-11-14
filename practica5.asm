;Materia: Lenguajes de Interfaz
;Alumno: Oscar Javier Chaidez Salazar
;Horario: 9 Am - 10 Am
;Docente: Dr. José Luis Medina Jiménez
;Práctica: PRACTICA 5.
;Descripción: Demuestra el uso de macros para encapsular y reutilizar bloques de código repetitivos

INCLUDE Irvine32.inc

; Macro reutilizable para imprimir una cadena y saltar de línea
MostrarMensaje MACRO texto
    mov edx, OFFSET texto
    call WriteString
    call Crlf
ENDM

; Macro que multiplica dos enteros y muestra el resultado
Multi MACRO num1, num2
    ; Conservar EBX porque se utiliza para la multiplicación
    push ebx
    mov eax, num1
    mov ebx, num2
    imul eax, ebx
    ; WriteInt imprime el resultado como entero con signo
    call WriteInt
    call Crlf
    pop ebx
ENDM

.data
    mensajeBienvenida BYTE "Bienvenido al sistema", 0
    mensajeFin BYTE "Nos vemos!", 0

.code
main PROC
    ; Reutilizar la macro de mensajes
    MostrarMensaje mensajeBienvenida
    MostrarMensaje mensajeFin

    ; Multiplicar 4 por 5; el valor esperado es +20
    Multi 4, 5

    ; Finalizar el proceso correctamente
    exit
main ENDP
END main

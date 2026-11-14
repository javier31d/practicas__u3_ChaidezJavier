;Materia: Lenguajes de Interfaz
;Alumno: Oscar Javier Chaidez Salazar
;Horario: 9 Am - 10 Am
;Docente: Dr. José Luis Medina Jiménez
;Práctica: PRACTICA 4.
;Descripción: Muestra el uso de la pila para pasar parámetros a una función y de IMUL para multiplicar dos valores

INCLUDE Irvine32.inc

.data
    ; Los valores se pasan por la pila, sin variables en .data

.code
main PROC
    ; Dejar un valor en EBX para comprobar que se conserva
    mov ebx, 10
    ; Pasar dos parámetros de 32 bits por la pila
    push 1
    push 2

    ; CALL añade la dirección de retorno a la pila
    call sumarPila

    ; En este punto EAX contiene 2 y EBX sigue conteniendo 10.
    ; NOP permite colocar un punto de interrupción en el depurador.
    nop
    exit
main ENDP

; Aunque el nombre original es sumarPila, realiza una multiplicación.
sumarPila PROC
    ; Preparar el marco de pila para acceder a los parámetros
    push ebp
    mov ebp, esp

    ; Conservar EBX antes de modificarlo
    push ebx

    ; [EBP+8] = 2 y [EBP+12] = 1
    mov eax, [ebp+8]
    mov ebx, [ebp+12]

    ; Multiplicar: el resultado queda en EAX
    imul eax, ebx

    ; Restaurar los registros conservados
    pop ebx
    pop ebp

    ; Regresar y liberar los 8 bytes de los dos parámetros
    ret 8
sumarPila ENDP
END main

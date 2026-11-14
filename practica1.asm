;Materia: Lenguajes de Interfaz
;Alumno: Oscar Javier Chaidez Salazar
;Horario: 9 Am - 10 Am
;Docente: Dr. José Luis Medina Jiménez
;Práctica: PRACTICA 1.
;Descripción: Muestra el uso de procedimientos (CALL/RET) para modularizar código

INCLUDE Irvine32.inc

.data
    ; Mensajes que se muestran en pantalla
    mensajeInicio BYTE "inicio de programa",0
    mensajeProcedimiento BYTE "Estoy dentro del procedimiento",0
    mensajeFin BYTE "Fin del programa",0

.code
main PROC
    ; Mostrar mensaje de inicio
    mov edx, OFFSET mensajeInicio
    call WriteString
    call Crlf

    ; Primera llamada al procedimiento
    call mensajeAviso

    ; Comprobar que se regresa al flujo de main
    mov eax, 10

    ; Segunda llamada para reutilizar el mismo procedimiento
    call mensajeAviso
    mov eax, 20

    ; Mostrar mensaje final
    mov edx, OFFSET mensajeFin
    call WriteString
    call Crlf
    exit
main ENDP

; Procedimiento reutilizable para mostrar un aviso
mensajeAviso PROC
    mov edx, OFFSET mensajeProcedimiento
    call WriteString
    call Crlf
    ; RET recupera la dirección de retorno y vuelve a quien llamó
    ret
mensajeAviso ENDP
END main

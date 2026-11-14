# Unidad 3 — Lenguajes de Interfaz

**Alumno:** Oscar Javier Chaidez Salazar  
**Horario:** 9 Am - 10 Am  
**Docente:** Dr. José Luis Medina Jiménez  
**Materia:** Lenguajes de Interfaz

## Descripción
Este repositorio reúne las cinco prácticas de la Unidad 3, desarrolladas en ensamblador x86 (MASM) con la biblioteca `Irvine32.inc`. Cada archivo `.asm` contiene comentarios explicativos.

## Prácticas y comprobaciones por realizar

| Práctica | ¿Qué hace? | ¿Qué comprobar al ejecutarla? |
| --- | --- | --- |
| **1. Procedimientos CALL/RET** | Invoca dos veces un procedimiento que muestra un mensaje. | Aparecen el mensaje de inicio, dos avisos y el mensaje final. |
| **2. Pila y retorno** | Lee el valor de `[esp]` desde `main`, `procUno` y `procDos`. | Aparecen tres valores hexadecimales; los de los procedimientos son direcciones de retorno. Los números pueden variar. |
| **3. Cadena vacía** | Lee una cadena y comprueba si el primer byte es cero. | Al pulsar Enter sin texto muestra «La cadena ESTA vacia.»; al escribir texto muestra «La cadena NO esta vacia.». |
| **4. Parámetros en pila** | Pasa 1 y 2 por la pila, los multiplica mediante `IMUL` y limpia los parámetros con `RET 8`. | En el depurador, al llegar a `nop`, `EAX = 2` y `EBX = 10`. El programa no imprime el resultado. |
| **5. Macros** | Usa macros para mostrar mensajes y multiplicar 4 por 5. | Aparecen «Bienvenido al sistema», «Nos vemos!» y el resultado `+20`. |

> **Estado de comprobación:** las salidas anteriores son resultados **esperados** a partir de la revisión del código. No se ha realizado compilación ni ejecución con MASM/Irvine32 en este entorno. Después de probar cada práctica, documentar aquí los resultados observados y, si se solicita, añadir capturas como evidencia.

## Requisitos
- Windows con Microsoft Macro Assembler (MASM) configurado en modo **x86 / 32 bits**.
- Biblioteca **Irvine32** y sus dependencias configuradas correctamente (`Irvine32.inc` y archivos de biblioteca).
- Entorno compatible, por ejemplo Visual Studio con proyecto de ensamblador configurado para Irvine32.

## Cómo ejecutar
1. Abrir o crear un proyecto MASM x86 con Irvine32 configurado.
2. Agregar el archivo `.asm` de la práctica deseada al proyecto.
3. Compilar y ejecutar la práctica.
4. Comparar el resultado con la columna de comprobaciones de esta tabla.
5. Para la práctica 4, usar el depurador y examinar los registros en la instrucción `nop`.

## Estructura
```text
Unidad-3-Lenguajes-de-Interfaz/
├── README.md
├── Practica-1/practica1.asm
├── Practica-2/practica2.asm
├── Practica-3/practica3.asm
├── Practica-4/practica4.asm
└── Practica-5/practica5.asm
```

## Notas
- En la práctica 3, la comprobación se hace dentro de `main`, siguiendo la estructura del código proporcionado.
- En la práctica 4 se conserva el nombre original `sumarPila`, aunque realiza una multiplicación.
- Los comentarios se han normalizado y se han aplicado correcciones menores para facilitar la compilación y revisión.

.globl main

.data
myArray: .word 8, 1, 3, 5
newline: .asciiz "\n"

.text
main:

    # Initialisierung der Indexzähler und Schleifenvariable
    add $t0, $zero, 0
    add $t6, $zero, 0
    j ifStatement

ifStatement:

    # Bedingung: Schleifenvariable gleich 3
    beq $t6, 3, setCounterToZero
    
    # Bedingung: Indexzähler größer als 12
    bgt $t0, 12, main

    lw $t3, myArray($t0)
    add $t0, $t0, 4
    lw $t4, myArray($t0)

    # Bedingung: Elemente vertauschen, wenn das vorherige größer ist als das aktuelle
    bgt $t3, $t4, sort

    # Inkrementierung der Schleifenvariable und Sprung zurück zur ifStatement
    add $t6, $t6, 1
    j ifStatement

sort:

    # Zurücksetzen der Schleifenvariable
    sub $t6, $t6, $t6
    
    # Vertauschen der Array-Elemente
    sw $t3, myArray($t0)
    sub $t7, $t0 , 4
    sw $t4, myArray($t7)
    
    # Inkrementierung des Indexzählers und Sprung zurück zur ifStatement
    add $t0, $t0, 4
    j ifStatement

setCounterToZero:

    # Zurücksetzen des Indexzählers
    sub $t0, $t0, $t0
    j output

output:

    # Bedingung: Indexzähler gleich 16
    beq $t0, 16, exit

    # Ausgabe des aktuellen Array-Elements
    li $v0, 1
    lw $a0, myArray($t0)
    syscall

    # Ausgabe eines Zeilenumbruchs
    li $v0, 4
    la $a0, newline
    syscall

    # Inkrementierung des Indexzählers und Sprung zurück zu output
    add $t0, $t0, 4
    j output

exit:

    # Programmende
    li $v0, 10
    syscall

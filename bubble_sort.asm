.globl main

.data

	myArray: .word 8,1,3,5
	newline: .asciiz "\n"

.text

	main: 
	
	add $t0, $zero, 0
	add $t6, $zero, 0
	j ifStatement
	
	ifStatement:
	
	beq $t6, 3, setCounterToZero
	bgt $t0, 12, main
	lw $t3, myArray($t0)
	add $t0, $t0, 4
	lw $t4, myArray($t0)
	
	bgt $t3, $t4, sort
	
	add $t6, $t6, 1
	j ifStatement
	
	sort:
	
	sub $t6, $t6, $t6
	sw $t3, myArray($t0)
	sub $t7, $t0 , 4
	sw $t4, myArray($t7)
	add $t0, $t0, 4
	j ifStatement

	setCounterToZero:
	
	sub $t0, $t0, $t0
	j ausgabe
	
	ausgabe:
	
	beq $t0, 16, exit
	li $v0, 1
	lw $a0, myArray($t0)
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	add $t0, $t0, 4
	j ausgabe
	
	exit:
	
	li $v0, 10
	syscall
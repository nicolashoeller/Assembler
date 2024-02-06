.globl main

.data

array: .word 1,2,3,4

.text

	main:

	li $t0, 0
	
	forLoop:
	lw $a0, array($t0)
	
	li $v0, 1
	syscall
	
	add $t0, $t0, 4
	
	bge $t0, 16, exit
	
	j forLoop
	
	exit:
	
	li $v0, 10
	syscall
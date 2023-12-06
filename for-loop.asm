.globl main

.text

main:

	li $t0, 0
	
forLoop:

	bgeu $t0, 10, endLoop
	remu $t1, $t0, 2
	beq $t1, 0, printInt
	add $t0, $t0, 1
	
printInt:

	move $a0, $t0
	li $v0, 1
	syscall
	add $t0, $t0, 1
	j forLoop

endLoop:

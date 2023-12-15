.globl main

.text

main:

	li $t0, 0
	
forLoop:

	bgeu $t0, 10, endLoop		# Test if $t0 is ge 10
	remu $t1, $t0, 2		# Modulo
	beq $t1, 1, printInt		# If $t1 (modulo) is 1 goto printInt
	add $t0, $t0, 1
	
printInt:
	
	mul $t2, $t0, $t0
	move $a0, $t2
	li $v0, 1
	syscall
	add $t0, $t0, 1
	j forLoop			# Jump to loop

endLoop:

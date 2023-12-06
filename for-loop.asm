.globl main

.text

main:

	li $t0, 0
	
forLoop:

	bgeu $t0, 8, endLoop		# Test if $t0 is ge 8
	remu $t1, $t0, 2		# Modulo
	beq $t1, 0, printInt		# If $t1 (modulo) is 0 goto printInt
	add $t0, $t0, 1
	
printInt:

	move $a0, $t0
	li $v0, 1
	syscall
	add $t0, $t0, 1
	j forLoop			# Jump to loop

endLoop:
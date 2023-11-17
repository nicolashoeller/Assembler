.globl main

main:
	li $t0, 10		#a
	li $a1, 30		#b
	
	add $t0, $t0, $a1	#a+b
	mul $a0, $t0, $t0	#²
	
	li $v0, 1
	
	syscall
.globl main
	li $t0, 10
	main:

	li $t1, 2
	
	div $t0, $t1
	mfhi $a0
	mflo $t0
	li $v0, 1
	syscall 
	
	bgt $t0, 0, main
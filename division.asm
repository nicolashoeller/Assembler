.text
main:
	
	li $t0, 10
	li $t1, 2
	
	div $t0, $t0, $t1
	mfhi $a3
	li $v0, 1
	
	syscall
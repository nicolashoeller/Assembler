.globl main

main:
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	mul $t0, $t0, 10
	div $a0, $t0, 2
	
	li $v0, 1
	syscall
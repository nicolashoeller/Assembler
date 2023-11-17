.globl main

main:
	li $t0, 12
	li $t1, 14
	
	add $a0, $t1 $t0
	li $v0, 1
	syscall
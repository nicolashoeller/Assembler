.globl main

main:
	li $t0, 30		#b
	li $t1, 20		#c
	
	mul $t0, $t0, $t0	#b*b
	add $t1, $t1, 10	#c+10
	
	div $a0, $t0, $t1	#(b*b)/(c+10)
	
	li $v0, 1
	syscall
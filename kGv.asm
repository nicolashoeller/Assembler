.globl main

.text

	main:
	
	li $t0, 25
	li $t1, 5
	li $t2, 25
	li $t3, 3
	
	while_schleife_ggt: 		# ggt
	beq $t0, $t1, kGv
	beq $t0, 1, kGv
	beq $t1, 1, kGv
	
	bgt $t0, $t1, subtraktion_t0
	j subtraktion_t1
	
	subtraktion_t0:
	
	sub $t0, $t0, $t1
	j while_schleife_ggt
	
	subtraktion_t1:
	
	sub $t1, $t1, $t0
	j while_schleife_ggt
	
	kGv:
	
	mul $t2, $t2, $t3
	div $a0, $t2, $t0
	
	li $v0, 1
	
	syscall
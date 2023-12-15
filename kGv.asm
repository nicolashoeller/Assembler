.globl main

	li $t1, 25
	li $t0, 5
	mul $t2, $t0, $t1
	
main: 
	
	beq $t1, $t0, end_loop
	blt $t1, $t0, aBiggerB
	blt $t0, $t1, bBiggerA
	
aBiggerB:
	sub $t0, $t0, $t1		
	j main	
	
bBiggerA:
	sub $t1, $t1, $t0		
	j main			
	
end_loop:
	div $t1, $t2, $t0
	move $a0, $t1
	li $v0, 1
	syscall
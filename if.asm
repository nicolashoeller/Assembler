.globl main
main:
	li $v0, 5				# Input
	
	syscall
	
	remu $t0, $v0, 2		# Modulo
	
	beq $t0, 0, _even		# Even to even
	
	
	li $a0, 0				# Write in a0 0
	li $v0, 1
	
	syscall
	
	j _ungerade
	
_even:

	li $a0, 1				# Write in a0 1
	li $v0, 1
	
	syscall
	
_ungerade:
	
	li $v0, 10
	syscall
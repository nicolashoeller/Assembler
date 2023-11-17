.globl main
main:
	li $v0, 5			#Eingabe
	
	syscall
	
	remu $t0, $v0, 2		#Modulo
	
	beq $t0, 0, _gerade		#Gerade zu _gerade
	
	
	li $a0, 0			#Schreibe in a0 0
	li $v0, 1
	
	syscall
	
	j _ungerade
	
_gerade:

	li $a0, 1			#Schreibe in a0 1
	li $v0, 1
	
	syscall
	
_ungerade:
	
	li $v0, 10
	syscall
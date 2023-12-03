.globl main

.data
	PI: .float 3.14

.text
	main:
	
	lwc1 $f12, PI		# Load Pi into Coproc 1 for float
	li $v0, 2
	syscall
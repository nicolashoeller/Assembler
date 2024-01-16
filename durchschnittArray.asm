.globl main

.data

array: .float 1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0
lenght: .float 9.0

.text
main:
	li $t0, 0			# Counter i
	lwc1 $f4, lenght

loop:
	bge $t0, 36, berechnung		# Counter >= 9 jump exit
	l.s $f1, array($t0)		# Load into $f1 the array on place ($t0)
	add.s $f2, $f2, $f1		# Add $f2 with $f1
	add $t0, $t0, 4			# Increment counter
	j loop

berechnung:
	div.s $f2, $f2, $f4		# Divide $f2, with $f4 and load it in $f2
	j exit

exit:
	mov.s $f12, $f2			# Move $f2 in $f12
	li $v0, 2			# Print float
	syscall
	li $v0, 10
	syscall
	
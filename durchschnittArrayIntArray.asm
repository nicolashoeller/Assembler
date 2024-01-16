.globl main

.data

average: .asciiz "The average of the array is: "
array: .word 1,2,3,4,5,6,7,8,9
lenght: .float 9.0

.text
main:
	li $t0, 0			# Counter i
	lwc1 $f4, lenght

loop:
	bge $t0, 36, berechnung		# Counter >= 9 jump exit
	lw $t1, array($t0)		# Load into $f1 the array on place ($t0)
	add $t2, $t2, $t1		# Add $f2 with $f1
	add $t0, $t0, 4			# Increment counter
	j loop

berechnung:
	move $s2, $t2			# Load word into storage
	mtc1 $s2, $f0			# Puts Integer into FP register
	cvt.s.w $f0, $f0		# Cast Integer to array
	div.s $f0, $f0, $f4		# Divide $f2, with $f4 and load it in $f2
	j exit

exit:
	la $a0, average
	li $v0, 4
	syscall
	mov.s $f12, $f0			# Move $f2 in $f12
	li $v0, 2			# Print float
	syscall
	li $v0, 10
	syscall
	
.globl main

.data 

int: .word 2, 5

.text

main:
	li $t0, 0
	lw $s0, int($t0)
	add $t0, $t0, 4
	lw $s1, int($t0)
	
	mtc1 $s0, $f1
	mtc1 $s1, $f2
	
	cvt.s.w $f1, $f1
	cvt.s.w $f2, $f2
	
	add.s $f1, $f1, $f2
	
	mov.s $f12, $f1
	
	li $v0, 2
	syscall
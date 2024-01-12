.data

str: .asciiz "Hallo 3BT"
answer: .asciiz "Das Program hat eine Länge von "

.text
 
main:
	la $t0, str
	lb $a0, 0($t0)       	# set $a0 to 1st character in str
	li $t1, 0

loop:	
	beqz   $a0, breakout 
	li $v0, 11    
		syscall
		addi   $t0, $t0, 1  
		addi $t1, $t1, 1 
	lb     $a0, 0($t0)   	# loads the first character in $t0

	j loop

breakout:
	li $a0, '\n'
	li $v0, 11
	syscall
	
	la $a0, answer
	li $v0, 4
	syscall
	
	move $a0, $t1		# Counter
	li $v0, 1
	syscall
	
	li     $v0, 10       	# system exit
	syscall
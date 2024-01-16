.globl main

.data
my_string: .asciiz "Guess the number between 0 and 20\n"
my_string_false: .asciiz "False, try again!\n\n"
my_string_right: .asciiz "You'r right, that is the right number!!\n"

.text
main:
	li $v0, 41				# Generate random number to $a0
	move $t1, $a0
	syscall
	
	remu $t1, $t1, 20
game:
	la $a0, my_string
	li $v0, 4       		        # Syscall for printf()
	syscall

	li $v0, 5
	syscall
        move $t0, $v0   		        # Move input to $t0
	
        beq $t0, $t1, _right_input	    	# If $t0 eq $t1 go to _right_input

        la $a0, my_string_false		    	# Load my_string_false in $a0
        li $v0, 4
        syscall
        j game

_right_input:
	la $a0, my_string_right         	# Load my_string_right in $a0
        li $v0, 4
        syscall

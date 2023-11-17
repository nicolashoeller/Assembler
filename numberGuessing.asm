.globl main

.data
    my_string: .asciiz "Guess the number between 0 and 20\n"
    my_string_false: .asciiz "False, try again!\n"
    my_string_right: .asciiz "You'r right, 10 is the right number\n"

.text
    main:
        la $a0, my_string
        li $v0, 4       		        # Syscall for printf()
        syscall

        li $v0, 5
        syscall
        move $t0, $v0   		        # Move input to $t0

        beq $t0, 10, _right_input	    # If $t0 eq 10 go to _right_input

        la $a0, my_string_false		    # Load my_string_false in $a0
        li $v0, 4
        syscall
        j _ende

_right_input:
        la $a0, my_string_right         # Load my_string_right in $a0
        li $v0, 4
        syscall

_ende:
	li $v0, 10
        syscall

.globl main

.data 
	hello_world: .asciiz "Hello World!\n"
	
.text
	main:
	
	la $a0, hello_world
	li $v0, 4
	syscall
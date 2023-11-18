.globl main

.data 
	hello_world: .asciiz "Hello World!\n"
	fuck_the_world: .asciiz "I'm gonna fuck the you\n"
	
.text
	main:
	
	la $a0, hello_world
	li $v0, 4
	syscall
	
	la $a0, fuck_the_world
	li $v0, 4
	syscall
.globl main

.data

palindromeString: .asciiz "anna"
notPalindrome: .asciiz "Your String is not a palindrome"
isPalindrome: .asciiz "Your String is a palindrome"

.text

main:
	li $t0, 0	
	li $t1, 3			# Lenght of String
	
loop:

printCorrect:
	li $a0, isPalindrome
	li $v0, 4
	syscall
	
printFalse:
	li $a0, notPalindrome
	li $v0, 4
	syscall

exit:
	li $v0, 10
	syscall
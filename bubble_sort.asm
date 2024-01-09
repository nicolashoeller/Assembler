.globl main

.data
	array: .word 2,1,9,7,6,5,4,8,3
	newline: .asciiz "\n"

.text
	
	
	main:
	
	li $t0, 27			# Größe des Arrays
	li $t1, 0			# temp
	li $t2, 0			# Count 1
	li $t3, 0			# count 2
	j ausgabe			# Springt zur ausgabe
	
	
	ersteForSchleife:
	
	bgt $t2, 27, ausgabe
	add $t2, $t2, 4
	j zweiteForSchleife
	
	zweiteForSchleife:
	
	add $t4, $t3, 1			# Count 2 + 1
	sub $t5, $t0, 1			# Arraylänge - 1
	sub $t5, $t5, $t2		# Arraylänge - 1 - Count 1
	bge $t2, $t5, ersteForSchleife	# Wenn j größer gleich Arraylänge - 1 - Count 1
	sw $t6, array($t3)		# Lädt in $t8 den Wert des Arrays an Stelle Count 2
	sw $t7, array($t4)		# Lädt in $t9 den Wert des Arrays an Stelle Count 2 + 1
	bgt $t6, $t7, switch
	
	switch:
	
	move $t1, $t4			# Temp wird Count 2 + 1
	sw $t6, array($t7)		# Array an Stelle Count 1 + 1  wird mit Count 1 ersetzt
	sw $t1, array($t6)		# Array an Stelle Count 2 wird mit Temp überschreiben
	j zweiteForSchleife
	
	ausgabe:
	
	bgt $t0, 27, exit		# Wenn $t0 größer als 27 ist beendet es das Programm
	lw $t6, array($t0)		# Lädt in $t6 den Wert des Arrays an Stelle $t0
	add $t0, $t0, 4			# Addiert zu $t0 4 da ein Integer 4 Bytes groß ist
	move $a0, $t6			# Bewegt $t0 in $a0
	li $v0, 1			# Gibt $a0 aus
	syscall
	j ausgabe			# Springt erneut zum Anfang des Ausgabe
	
	
	exit:
	
	li $v0, 10
	syscall

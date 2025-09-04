 .data
 	data_nasc1 : .word 2006
 	data_nasc2 : .word  2025
 	virgula: .asciiz ", "
 	t_data_nasc1 : .asciiz "\nData de Nascimento 1: 2006"
 	t_data_nasc2 : .asciiz "\nData de Nascimento 2: 2025"
 	resultado: .asciiz "\nRESULTADO SOMA: "
 	cabecalho2: .asciiz "PROGRAMA 2: SOMA DOS NASCIMENTOS"

 .text 
 
 	li $v0, 4
 	la $a0, cabecalho2
 	syscall 
 	
 	li $v0, 4
 	la $a0, t_data_nasc1
 	syscall
 	
 	li $v0, 4
 	la $a0, t_data_nasc2
 	syscall
	
	li $v0, 4
	la $a0, resultado
	syscall
	
 	lw $t0, data_nasc1
 	lw $t1, data_nasc2
 	
 	add $t2, $t0, $t1
 	
 	li $v0, 1
 	move $a0, $t2
 	syscall 
 	
 	

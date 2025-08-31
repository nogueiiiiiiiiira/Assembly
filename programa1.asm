.data
 	num1 : .word  1
 	num2 : .word  2
 	num3 : .word  3
 	num4 : .word  4
 	num5 : .word  5
 	num6 : .word  9
 	linha: .asciiz "\n"
 	virgula: .asciiz ", "
 	cabecalho1: .asciiz "PROGRAMA 1: ORDEM CRESCENTE (sem array e sem if/else)"
 	t_nao_ordenados: .asciiz "´Números Não Ordenados: "
 	t_ordenados: .asciiz "´Números Ordenados: "

 .text 
 
 	li $v0, 4
 	la $a0, cabecalho1
 	syscall 
 	
 	li $v0, 4
 	la $a0, linha
 	syscall 
 	
 	li $v0, 4
 	la $a0, linha
 	syscall 
 	
 	li $v0, 4
 	la $a0, t_nao_ordenados
 	syscall 
 	
 	li $v0, 1   
	lw $a0, num4
	syscall 
	
	li $v0, 4
    	la $a0, virgula
	syscall
	
	li $v0, 1   
	lw $a0, num3
	syscall
	
	li $v0, 4
    	la $a0, virgula
	syscall
	
	li $v0, 1   
	lw $a0, num6
	syscall
	
	li $v0, 4
    	la $a0, virgula
	syscall
	
	li $v0, 1   
	lw $a0, num5
	syscall
	
	li $v0, 4
    	la $a0, virgula
	syscall
	
	li $v0, 1   
	lw $a0, num2
	syscall
	
	li $v0, 4
   	la $a0, virgula
	syscall
	
	li $v0, 1   
	lw $a0, num1
 	syscall       
 	
	li $v0, 4
 	la $a0, linha
 	syscall    
 	
 	li $v0, 4
 	la $a0, linha
 	syscall 
 	
 	li $v0, 4
 	la $a0, t_nao_ordenados
 	syscall 
 	
	li $v0, 1   
	lw $a0, num1
	syscall 
	
	li $v0, 4
    	la $a0, virgula
	syscall
	
	li $v0, 1   
	lw $a0, num2
	syscall
	
	li $v0, 4
    	la $a0, virgula
	syscall
	
	li $v0, 1   
	lw $a0, num3
	syscall
	
	li $v0, 4
    	la $a0, virgula
	syscall
	
	li $v0, 1   
	lw $a0, num4
	syscall
	
	li $v0, 4
    	la $a0, virgula
	syscall
	
	li $v0, 1   
	lw $a0, num5
	syscall
	
	li $v0, 4
    	la $a0, virgula
	syscall
	
	li $v0, 1   
	lw $a0, num6
 	syscall          

.data
    sequencia: .word 4, 3, 9, 5, 2, 1
    cabecalho: .asciiz "-- PROGRAMA 1: ORDENAÇÃO --"
    t_nao_ordenado: .asciiz "\nNão ordenado: "
    t_ordenado:   .asciiz "\nOrdenado: "
    virgula: .asciiz ", "

.text
    main:
    
        li $s0, 0 # contador
        la $t7, sequencia
        
        lw $t0, 0($t7)             
        lw $t1, 4($t7)         
        lw $t2, 8($t7)              
        lw $t3, 12($t7)            
        lw $t4, 16($t7)        
        lw $t5, 20($t7)         

    compara_t0_t1:
        ble $t0, $t1, compara_t1_t2
        move $t6, $t0
        move $t0, $t1
        move $t1, $t6
    compara_t1_t2:
        ble $t1, $t2, compara_t2_t3
        move $t6, $t1
        move $t1, $t2
        move $t2, $t6
    compara_t2_t3:
        ble $t2, $t3, compara_t3_t4
        move $t6, $t2
        move $t2, $t3
        move $t3, $t6
    compara_t3_t4:
        ble $t3, $t4, compara_t4_t5
        move $t6, $t3
        move $t3, $t4
        move $t4, $t6
    compara_t4_t5:
        ble $t4, $t5, garantindo_ordenar
        move $t6, $t4
        move $t4, $t5
        move $t5, $t6
        
    garantindo_ordenar:
        addi $s0, $s0, 1
        blt $s0, 5, compara_t0_t1

        li $v0, 4
        la $a0, cabecalho
        syscall

        li $v0, 4
        la $a0, t_nao_ordenado
        syscall

        li $v0, 1
        lw $a0, 0($t7)
        syscall

        li $v0, 4
        la $a0, virgula
        syscall

        li $v0, 1
        lw $a0, 4($t7)
        syscall

        li $v0, 4
        la $a0, virgula
        syscall

        li $v0, 1
        lw $a0, 8($t7)
        syscall

        li $v0, 4
        la $a0, virgula
        syscall

        li $v0, 1
        lw $a0, 12($t7)
        syscall

        li $v0, 4
        la $a0, virgula
        syscall

        li $v0, 1
        lw $a0, 16($t7)
        syscall

        li $v0, 4
        la $a0, virgula
        syscall

        li $v0, 1
        lw $a0, 20($t7)
        syscall

        li $v0, 4
        la $a0, t_ordenado
        syscall

        li $v0, 1
        move $a0, $t0
        syscall

        li $v0, 4
        la $a0, virgula
        syscall

        li $v0, 1
        move $a0, $t1
        syscall

        li $v0, 4
        la $a0, virgula
        syscall

        li $v0, 1
        move $a0, $t2
        syscall

        li $v0, 4
        la $a0, virgula
        syscall

        li $v0, 1
        move $a0, $t3
        syscall

        li $v0, 4
        la $a0, virgula
        syscall

        li $v0, 1
        move $a0, $t4
        syscall

        li $v0, 4
        la $a0, virgula
        syscall

        li $v0, 1
        move $a0, $t5
        syscall

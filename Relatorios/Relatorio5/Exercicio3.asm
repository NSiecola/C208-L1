.data
    a: .word 4, 5

.text
    
    # Carrega o endereço do vetor a em $s0
    la $s0, a

    li $t0, 0

    # Carrega o valor de a[0] em $t1
    lw $t1, 0($s0)

    # Carrega o valor de a[1] em $t3
    lw $t3, 4($s0)

    # Se a[0] < 5, então $t2 = 1, senão $t2 = 0
    slti $t2, $t1, 5 

    # Se $t2 = 1, a[0] = $t0 + 2, senão $t4 = a[1] + 10
    beq $t2, $zero, else
    addi $t1, $t0, 2

    else:
    addi $t4, $t3, 10




.text
    # Questao 3
    li $t1, 54 # a
    li $t2, 45 # b

    add $t0, $t1, $t2 # a + b

    li $v0, 1
    move $a0, $t0
    syscall
    

.text  
    # Questao 2
    # Entre com sua idade
    li $v0, 5
    syscall

    # Armazene o valor de sua idade em $t1
    move $t1, $v0

    # Somar 30 anos a sua idade
    addi $t2, $t1, 30

.data 

    # 3 valores inteiros
    a: .byte 0
    b: .byte 0
    c: .byte 0

    # Frases a serem impressas
    msg1: .asciiz "Digite o primeiro valor: "
    msg2: .asciiz "Digite o segundo valor: "
    msg3: .asciiz "Digite o terceiro valor: "
    msg4: .asciiz "A soma e maior que 100!"
    msg5: .asciiz "A soma e menor que 100!"

.text

    # Imprime a msg1
    li $v0,4
    la $a0,msg1
    syscall
    # Le o primeiro valor
    li $v0,5
    syscall
    # Armazena o primeiro valor em a
    add $t0,$0,$v0
    sb $t0,a

    # Imprime a msg2
    li $v0,4
    la $a0,msg2
    syscall
    # Le o segundo valor
    li $v0,5
    syscall
    # Armazena o segundo valor em b
    add $t1,$0,$v0
    sb $t1,b

    # Imprime a msg3
    li $v0,4
    la $a0,msg3
    syscall
    # Le o terceiro valor
    li $v0,5
    syscall
    # Armazena o terceiro valor em c
    add $t2,$0,$v0
    sb $t2,c

    # Soma os valores
    add $t3,a,b
    add $t3,$t3,c

    # Verifica se a soma é maior que 100
    li $t4,100
    bgt $t3,$t4,maior
    # Se não for, imprime a msg5
    li $v0,4
    la $a0,msg5
    syscall
    j fim

    # Se for, imprime a msg4
    maior:
    li $v0,4
    la $a0,msg4
    syscall

    fim:

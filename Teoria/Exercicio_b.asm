.data 

    # 3 valores inteiros
    a: .byte 0
    b: .byte 0
    c: .byte 0

    # Frases a serem impressas
    msg1: .asciiz "Digite o primeiro valor: "
    msg2: .asciiz "Digite o segundo valor: "
    msg3: .asciiz "Digite o terceiro valor: "
    msg4: .asciiz "Os valores em ordem crescente sao: "
    espaco: .asciiz " "

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

    # a < b < c
    slt $t3,$t0,$t1
    slt $t4,$t1,$t2
    and $t5,$t3,$t4
    beq $t5,$0,else1

    # Se a < b < c, imprime a, b e c
    li $v0,4
    la $a0,msg4
    syscall
    li $v0,1
    add $a0,$0,$t0
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t1
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t2
    syscall
    j end

    else1:
    # a < c < b
    slt $t3,$t0,$t2
    slt $t4,$t2,$t1
    and $t5,$t3,$t4
    beq $t5,$0,else2

    # Se a < c < b, imprime a, c e b
    li $v0,4
    la $a0,msg4
    syscall
    li $v0,1
    add $a0,$0,$t0
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t2
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t1
    syscall
    j end

    else2:
    # b < a < c
    slt $t3,$t1,$t0
    slt $t4,$t0,$t2
    and $t5,$t3,$t4
    beq $t5,$0,else3

    # Se b < a < c, imprime b, a e c
    li $v0,4
    la $a0,msg4
    syscall
    li $v0,1
    add $a0,$0,$t1
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t0
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t2
    syscall
    j end

    else3:
    # b < c < a
    slt $t3,$t1,$t2
    slt $t4,$t2,$t0
    and $t5,$t3,$t4
    beq $t5,$0,else4

    # Se b < c < a, imprime b, c e a
    li $v0,4
    la $a0,msg4
    syscall
    li $v0,1
    add $a0,$0,$t1
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t2
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t0
    syscall
    j end

    else4:
    # c < a < b
    slt $t3,$t2,$t0
    slt $t4,$t0,$t1
    and $t5,$t3,$t4
    beq $t5,$0,else5

    # Se c < a < b, imprime c, a e b
    li $v0,4
    la $a0,msg4
    syscall
    li $v0,1
    add $a0,$0,$t2
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t0
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t1
    syscall
    j end

    else5:
    # c < b < a
    slt $t3,$t2,$t1
    slt $t4,$t1,$t0
    and $t5,$t3,$t4
    beq $t5,$0,end

    # Se c < b < a, imprime c, b e a
    li $v0,4
    la $a0,msg4
    syscall
    li $v0,1
    add $a0,$0,$t2
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t1
    syscall
    li $v0,4
    la $a0,espaco
    syscall
    li $v0,1
    add $a0,$0,$t0
    syscall
    j end

    end:


    






.data
    a: .word 
    b: .word 
    c: .word

.text
   
    # Carrega o endereço de a em $s0
    la $s0, a

    # Carrega o endereço de b em $s1
    la $s1, b

    # Carrega o endereço de c em $s2
    la $s2, c

    # Carrega o valor de b[15] em $t0
    lw $t0, 60($s1)

    # Carrega o valor de a[5] em $t1
    lw $t1, 20($s0)

    # Carrega o valor de a[21] em $t2
    lw $t2, 84($s0)

    # Carrega o valor de c[3] em $t3
    lw $t3, 12($s2)

    li $t4, 5

    # A
    # $t5 = b[15] - $t4
    sub $t5, $t0, $t4

    # B
    # $t5 = a[5] + c[3]
    add $t5, $t1, $t3

    # C
    # $t5 = $t4 - a[21]
    sub $t5, $t4, $t2


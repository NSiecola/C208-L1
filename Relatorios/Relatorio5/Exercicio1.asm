.data
    a: .word 
    b: .word 
    c: .word

.text
    # A
    # load address of a into $s1
    la $s1, a

    li $t0, 0
    li $t1, 1

    # $t0 - $t1
    sub $t2, $t0, $t1

    # store b - c into a[10]
    sw $t2, 40($s1)

    # B
    # load address of b into $s2
    la $s2, b

    li $t0, 10
    li $t1, 20

    # $t0 + $t1
    add $t2, $t0, $t1

    # store b + c into b[245]
    sw $t2, 980($s2)

    # C
    # load address of c into $s3
    la $s3, c

    li $t0, 100
    li $t1, 200

    # $t0 - $t1
    sub $t2, $t0, $t1

    # store b - c into c[0]
    sw $t2, 0($s3)


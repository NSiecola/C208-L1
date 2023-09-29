.text


	li $t0, 2 #a
	li $t1, 4 #b
	li $t2, 1 #c

	# 1 a==b

	bne $t0, $t1, ELSE1
		add $t2, $t0, $t1
		sub $t0, $t1, $t2
		j END1
	ELSE1:
		add $t1, $t0, $t2
		sub $t2, $t1, $t2
	END1:

	# 2 a!=b

	beq $t0, $t1, ELSE2
		add $t2, $t0, $t1
		sub $t0, $t1, $t2
		j END2
	ELSE2:
		add $t1, $t0, $t2
		sub $t2, $t1, $t2
	END2:

	# 3 a>b
	blt $t0, $t1, ELSE3
		add $t2, $t0, $t1
		sub $t0, $t1, $t2
		j END3
	ELSE3:
		add $t1, $t0, $t2
		sub $t2, $t1, $t2
	END3:

	# 4 a<b
	bgt $t0, $t1, ELSE4
		add $t2, $t0, $t1
		sub $t0, $t1, $t2
		j END4
	ELSE4:
		add $t1, $t0, $t2
		sub $t2, $t1, $t2
	END4:

	# 5
	li $t3, 10
	li $t4, 0

	while: ble $t3, $t4, LOOP
	j exit
	LOOP:
		add $t4, $t4, 5
		subi $t3, $t3, 2
		j while
	exit:


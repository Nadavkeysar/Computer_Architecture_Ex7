addi $s0,$0, 4660
sll $s0, $s0, 0x10
add $s0, $s0, $a1
label1:
	slt $t1, $t2, $s3
	beq $t1, $0, label2
	sllv $s1, $s7, $t1
	or $s5, $t9,$a3
	j label1
label2:
	sub $s2, $t5, $a2

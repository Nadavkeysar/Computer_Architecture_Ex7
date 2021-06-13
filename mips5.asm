.data
.text
addi $t0 $0 3
addi $t1 $0 12
addi $t2 $0 18
jal func1
move $s2 $a1

li $v0 10
syscall

func1:
add $a1 $t0 $t1
add $a1 $a1 $t2
add $t7 $0 $ra
jal func2
jr $t7

func2:
mul $a1 $a1 $a1
addi $a1 $a1 1
jr $ra
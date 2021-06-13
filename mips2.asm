
.text
main:
addi $t4,$0,0
addi $t7,$0,1
addi $s0,$0,1
addi $s1,$0,1
addi $s2,$0,1
addi $s3,$0,1
jal func
li $v0,10
syscall
func:
while:
beq $t7,8,stop
mul $t0,$s0,$s1
mul $t0,$t0,$s2
mul $t0,$t0,$s3
add $a0,$t0,$0
add $t4,$t4,$a0
addi $s0,$s0,2
addi $t7,$t7,1
mul $s1,$t7,$t7
mul $s2,$s2,-1
sll $s3,$s3,2
j while
stop:
jr $ra
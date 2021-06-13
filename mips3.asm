.data

.text
addi $s6,$0,1
addi $t0,$0,10
addi $t1,$0,6
addi $t2,$0,4
beq $s6,1,op1
beq $s6,2,op2
beq $s6,3,op3
div $s6 $s6 $t2
j stop
op1:
addi $s6 $s6 16
j stop
op2:
mul $s6 $s6 $t0
j stop
op3:
mul $s6 $s6 $t1
addi $s6 $s6 15
j stop
stop:
li $v0 10
syscall
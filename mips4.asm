.data

.text
addi $t0 $0 0
addi $t1 $0 1
addi $t2 $0 0x10010000
while:
beq $t0 4 stop
sw $t1 ($t2)
addi $t0 $t0 1
mul $t1 $t1 8
addi $t2 $t2 12
j stop
stop:
li $v0 10
syscall
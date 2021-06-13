
POW:
	addi $sp,$sp,-8     #alocating place int stack
	sw $ra, 0($sp)      #saving return adress so the func knows to gwt back to main func eventually
	sw $a0, 4($sp)       #saving parameter a in stack
	addi $t1,$0,1        #$t1=1	
	bgt $a1,$t1,ELSE     #branch if greathen
		addi $v0,$0,1		
		jr $ra	
	ELSE:
		addi $a1,$a1,-1		#paramter b-- 
		jal POW			#jump back to pow
	lw $ra ,0($sp)		
	lw $t0, 4($sp)
	addi $sp,$sp,8
	mult $t0,$v0
	mflo $v0
	jr $ra			#jumps back here to preform multiply recursively		
STOP

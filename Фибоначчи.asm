.data
	space: .ascii " \0"
	enter: .ascii " \n\0"
	message: .ascii "\n Все! А теперь исчез в ужасе\0"
.text
	li x17, 5
	ecall
	mv x5, x10
	li x1, 1
	li x2, 1
	li x3, 0
	
	li x17, 1
	mv x10, x1
	ecall
	la x10, space
	li x17, 4
	ecall
	
	li x17, 1
	mv x10, x2
	ecall
	la x10, space
	li x17, 4
	ecall
	blt x5, x1, end
	addi x5, x5, -2
loop:
	add x10, x1, x2
	li x17, 1
	ecall
	mv x2, x1
	mv x1, x10
	la x10, space
	li x17, 4
	ecall
	addi x3, x3, 1
	bne x3, x5, loop
	
end:
	la x10, message
	li x17, 4
	ecall
	



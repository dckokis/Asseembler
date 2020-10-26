.data
	space: .ascii " \0"
	enter: .ascii " \n\0"
	message: .ascii "\n Все! А теперь исчез в ужасе\0"
.text
	li x17, 5
	ecall
	mv x25, x10 #первый член прогрессии а1
	li x17, 5
	ecall
	mv x26, x10 #разность прогрессии d
	li x17, 5
	ecall
	mv x27, x10 #число членов прогрессии N
	li x30, 0
	li x31, 1 #счетчик
	beq x27, x30, end
	addi x30, x25, 0
sum: 
	add x25, x26, x25
	add x30, x30, x25
	addi x31, x31, 1
	blt x31, x27, sum
end:
	la x10, message
	li x17, 1
	ecall
	
	

.data
	space: .ascii " \0"
	enter: .ascii " \n\0"
	message: .ascii " \nВы ввели некорректное число!\0"
.text
	li x17, 5
	ecall
	mv x11, x10
	ecall
	mv x12, x10
	beq x11, x0, end2
	beq x12, x0, end2
greater:	
	bge x11, x12, division
	mv x26, x12
	mv x12, x11
	mv x11, x26
division:
	rem x11, x11, x12
	beq x11, x0, end
	b greater
end:
	li x17, 1
	mv x10, x12
	ecall
	b end3
end2:
	la x10, message
	li x17, 4
	ecall
end3:

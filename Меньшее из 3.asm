.text
	li	a7, 5
	ecall
	mv	s7, a0
	ecall
	mv	s8, a0
	ecall
	mv	s9, a0
	bge	s7, s8, g1 #s7 >= s8
	b c2
	
g1:	mv	s7, s8

c2:	bge	s7, s9, g2 #s7>=s9
	b	end
	
g2:	mv	s7, s9
	
end:	mv	a0, s7
	li	a7, 1
	ecall

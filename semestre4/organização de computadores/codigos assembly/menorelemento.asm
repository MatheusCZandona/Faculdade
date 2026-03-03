.data
	vetor1: .word 345,-7,-231,-8,4,2, 4937
	vetor2: .word 135,-4,2,16,-84,321,65
.text
	Main: 
		la a0, vetor1
		li a1, 7
		
		call Menor
		
		
		
		li a7, 10
		ecall
	Menor: # funcao que percorre 1 vez o vetor atualizando o menor elemento dele
	
		li t0, 1 #variavel de controle do loop
		mv t1, a1 #tamanho do vetor
		lw t2, 0(a0) #t2 menor elemento
		li t4, 0 #t4 index menor elemento
		addi a0, a0, 4
		
	Loopfm:	bge t0, t1, fimloopfm
			lw t3, 0(a0) #t3 contem o elemento atual
			bge t3, t2, continuefm #continua se o atual foi maior ou igual
				mv t2, t3
				mv t4, t0
		
		continuefm:
			addi a0, a0, 4
			addi t0, t0, 1
			j Loopfm
	
	fimloopfm: 
		mv a0, t2
		mv a1, t4
		ret	

	
	
	

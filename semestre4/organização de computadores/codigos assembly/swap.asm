.data
	vetor1: .word 345,-7,-231,-8,4,2, 4937
	vetor2: .word 135,-4,2,16,-84,321,65
.text
	Main: 
		la a0, vetor1
		li a1, 7
		li a2, 2
		li a3, 6
		
		call swap
		
		
		
		li a7, 10
		ecall
		
		
	swap: 
		mv t1, a1 #tamanho do vetor
		mv t2, a2 # primeiro indice
		mv t3, a3 #segundo indice
		
		
		beq t2, t3, fimswap

    		li t4, 4
  		mul t5, t2, t4       
  		mul t6, t3, t4      

 		  add t1, a0, t5    
  		  add t2, a0, t6      

   		 lw t3, 0(t1)        
  		 lw s0, 0(t2)      

   		 sw s0, 0(t1)      
  		 sw t3, 0(t2) 
  		 
  		fimswap:
		
		ret
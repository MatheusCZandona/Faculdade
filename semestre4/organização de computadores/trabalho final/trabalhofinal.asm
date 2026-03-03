#trabalho feito por:
#Matheus Zandoná - 20240005671
#João Xavier - 20240008539
.data
vet: .word 4,4,4,4,4,4,0,4,4,4,4,4,4,0
vet_size: .word 14
map: .word 12,11,10,9,8,7, 0, 5,4,3,2,1,0, 0
#vet: .word 0, 70, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0
#vet: .word 0,0,1,0,0,1,0,0,0,0,1,0,0,0
buraco1: .word 6
buraco2: .word 13
bem_vindo: .string "Bem vindo ao mancala\n"
texto_topo: .string "\nTabuleiro Atual:\n          12   <-- JOGADOR 2    7\n"
linha_sup:  .string " +----+----+----+----+----+----+----+----+\n"
linha_meio: .string "|----+----+----+----+----+----|"
texto_inf:  .string "          0    --> JOGADOR 1    5\n"
barra:      .string "|"
espaco:     .string " "
espaco_tab: .string "        "
nova_linha: .string "\n"
jogador1:   .string "Jogador 1\n"
jogador2:   .string "Jogador 2\n"
mov1:	    .string "Escolha a cavidade [0-5]: "
mov2:	    .string "Escolha a cavidade [7-12]: "
mov_invalido: .string "Movimento inválido, tente novamente\n"
fim_do_jogo:   .string "\nJogo encerrado!\n"
win1: .string "O vencedor é o jogador 1\n"
win2: .string "O vencedor é o jogador 2\n"
empate: .string "O jogo terminou empatado\n"
novo_jogo: .string "Deseja jogar novamente? [0 = nao / 1 = sim] "
c_tabuleiro: .string "tabuleiro carregado\n"
teste: .string "aqui\n"
joga_dnovo: .string "Pode jogar novamente!\n"
vitoriasj1: .string "Jogador 1 tem vitórias = "
vitoriasj2: .string "Jogador 2 tem vitórias = "
empates: .string "Número de empates = "

.text
.globl main

# --------------------------
# main
# --------------------------
main:
    la a0, bem_vindo
    li a7, 4
    ecall

	li s9, 0 #registradores que guardam o numero de vitórias e empates
	li s10, 0
	li s11, 0
jogos:
	la a0, vitoriasj1
    li a7, 4
    ecall
    mv a0, s9
    li a7, 1
    ecall
    la a0, nova_linha
    li a7, 4
    ecall
    
    la a0, vitoriasj2
    li a7, 4
    ecall
    mv a0, s10
    li a7, 1
    ecall
    la a0, nova_linha
    li a7, 4
    ecall
    
    la a0, empates
    li a7, 4
    ecall
    mv a0, s11
    li a7, 1
    ecall
    la a0, nova_linha
    li a7, 4
    ecall

    la a0, vet
    call carrega_tabuleiro
    call jogo

# ==========================
# loop principal do jogo
# ==========================
jogo:
# ====== Movimento do Jogador 1 ======
le_mv1:
	li s8, 1 #guarda em s8 o jogador atual
    call mostra_tabuleiro

    la a0, jogador1
    li a7, 4
    ecall

    la a0, mov1
    li a7, 4
    ecall

    li a7, 5        # lê inteiro 0 a 5
    ecall
    mv t0, a0       # guarda valor lido em t0

    la a0, nova_linha
    li a7, 4
    ecall

    blt t0, zero, fora1 #verificação dos bounds 0-5
    lw t1, buraco1
    addi t1, t1, -1
    bgt t0, t1, fora1

    # verifica se a posição escolhida é 0
    la t5, vet
    li t6, 4
    mul t1, t0, t6
    add t5, t5, t1
    lw t4, 0(t5)
    beq t4, zero, fora1

    mv a0, t0
    call executa_mv1 # distribui do jogador 1

    # após executar movimento, executa_mv1 decide se joga novamente
    # Se não jogou novamente, fluxo volta aqui e vai para le_mv2
    j le_mv2

fora1:
    la a0, mov_invalido
    li a7, 4
    ecall
    j le_mv1

# ====== Movimento do Jogador 2 ======
le_mv2:
	li s8, 2 #jogador atual
    call mostra_tabuleiro

    la a0, jogador2
    li a7, 4
    ecall

    la a0, mov2
    li a7, 4
    ecall

    li a7, 5 #le jogada
    ecall
    mv t0, a0

    la a0, nova_linha
    li a7, 4
    ecall

    lw t1, buraco2
    addi t1, t1, -1
    bgt t0, t1, fora2 #verificação dos bounds 7-12
    lw t1, buraco1
    addi t1, t1, 1
    blt t0, t1, fora2

    # verifica se a posição escolhida é 0
    la t5, vet
    li t6, 4
    mul t1, t0, t6
    add t5, t5, t1
    lw t4, 0(t5)
    beq t4, zero, fora2

    mv a0, t0
    call executa_mv2 # distribui do jogador 2

    j le_mv1

fora2:
    la a0, mov_invalido
    li a7, 4
    ecall
    j le_mv2
#==========================================================
#=================================
# executa_mv1 (jogador 1)
# ============================
executa_mv1:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)      # preserva s0 se for usado
    sw s1, 4(sp)

    la t0, vet
    mv t1, a0          # índice inicial da jogada
    li t2, 4
    mul t3, t1, t2
    add t0, t0, t3     # t0 aponta para a casa escolhida

    lw t4, 0(t0)       # t4 = número de sementes
    sw zero, 0(t0)     # zera a casa de origem

    mv s2, t1          # índice atual
    lw t6, vet_size          # total de casas
    lw s0, buraco2          # índice do buraco do jogador 2 (pular)
loop_semeada1:
    addi s2, s2, 1
    rem s2, s2, t6     # t5 = t5 % 14
    beq s2, s0, loop_semeada1   # pular o buraco do jogador 2

    # calcula endereço de vet[t5]
    la t0, vet
    li t2, 4
    mul t3, s2, t2
    add t0, t0, t3
    lw t1, 0(t0)
    addi t1, t1, 1
    sw t1, 0(t0)

    addi t4, t4, -1
    bnez t4, loop_semeada1

	# se parou em uma casa do jogador 1
	lw t0, buraco1
    addi t0, t0, -1
    bgt s2, t0, nao_rouba1

    # verifica se a casa é 1 pq foi adicionada só 1 semente aqui
    la t0, vet
    li t2, 4
    mul t3, s2, t2
    add t0, t0, t3
    lw t4, 0(t0)
    li t6,1
    bne t4,t6 ,nao_rouba1


casa_zero1:
    # captura as sementes da casa oposta
    la t3, map
    li t2, 4
    mul t5, s2, t2
    add t3, t3, t5
    lw t4, 0(t3)        # t4 = índice da casa oposta
    mul t4, t4, t2

    # endereço da casa oposta
    la t6, vet
    add t6, t6, t4
    lw t1, 0(t6)         # sementes da casa oposta
    sw zero, 0(t6)       # zera a casa oposta

    # soma também 1 da casa atual
    addi t1, t1, 1

    # limpa a casa atual
    la t6, vet
    mul t5, s2, t2
    add t6, t6, t5
    sw zero, 0(t6)

    # bota no buraco do jogador 1 (fuja, xero, la ele)
    lw t3, buraco1
    mul t4, t3, t2
    la t6, vet
    add t6, t6, t4
    lw t5, 0(t6)
    add t5, t5, t1
    sw t5, 0(t6)



nao_rouba1:
	# verifica o fim de jogo
    la a0, vet
    call verifica_fim

    lw t0, buraco1
    beq s2, t0, joga_novamente1  # se caiu no próprio buraco, joga novamente
    
    j fim_rodada1

joga_novamente1:
    la a0, joga_dnovo
    li a7, 4
    ecall
    # Volta para o jogador 1
    lw ra, 12(sp)
    lw s0, 8(sp)
    lw s1, 4(sp)
    addi sp, sp, 16
    j le_mv1

fim_rodada1:
    lw ra, 12(sp)
    lw s0, 8(sp)
    lw s1, 4(sp)
    addi sp, sp, 16
    ret
#=============================================================
# ================================
# executa_mv2 (jogador 2)
# ================================
executa_mv2:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    sw s1, 4(sp)

    la t0, vet
    mv t1, a0          # índice inicial
    li t2, 4
    mul t3, t1, t2
    add t0, t0, t3     # t0 aponta para a casa escolhida

    lw t4, 0(t0)       # t4 = número de sementes
    sw zero, 0(t0)     # zera a casa de origem

    mv s2, t1          # índice atual
    lw t6, vet_size          # total de casas
    lw s0, buraco1           # índice do buraco do jogador 1 (pular)

loop_semeada2:
    addi s2, s2, 1
    rem s2, s2, t6     # t5 = t5 % 14
    beq s2, s0, loop_semeada2   # pular o buraco do jogador 1

    # calcula endereço vet[t5]
    la t0, vet
    li t2, 4
    mul t3, s2, t2
    add t0, t0, t3
    lw t1, 0(t0)
    addi t1, t1, 1
    sw t1, 0(t0)

    addi t4, t4, -1
    bnez t4, loop_semeada2

    
	# se parou em uma casa do jogador 2
    lw t0, buraco1
    addi t0, t0, 1
    blt s2, t0, nao_rouba2
    lw t0, buraco2
    beq s2, t0, nao_rouba2

    # verifica se a casa é 2 pq foi adicionada só 1 semente aqui
    la t0, vet
    li t2, 4
    mul t3, s2, t2
    add t0, t0, t3
    lw t4, 0(t0)
    li t6,1
    bne t4,t6 ,nao_rouba2


casa_zero2:
    # captura as sementes da casa oposta
    la t3, map
    li t2, 4
    mul t5, s2, t2
    add t3, t3, t5
    lw t4, 0(t3)        # t4 = índice da casa oposta
    mul t4, t4, t2

    # endereço da casa oposta
    la t6, vet
    add t6, t6, t4
    lw t1, 0(t6)         # sementes da casa oposta
    sw zero, 0(t6)       # zera a casa oposta

    # soma também 1 da casa atual
    addi t1, t1, 1

    # limpa a casa atual
    la t6, vet
    mul t5, s2, t2
    add t6, t6, t5
    sw zero, 0(t6)

    # bota no buraco do jogador 2 (fuja kkkkk)
    lw t3, buraco2
    mul t4, t3, t2
    la t6, vet
    add t6, t6, t4
    lw t5, 0(t6)
    add t5, t5, t1
    sw t5, 0(t6)
    

nao_rouba2:
    # verifica o fim
    la a0, vet
    call verifica_fim
    
    # Se a última casa foi o buraco do jogador 2 joga novamente
    lw t0, buraco2
    beq s2, t0, joga_novamente2
    
    j fim_rodada2

joga_novamente2:
    la a0, joga_dnovo
    li a7, 4
    ecall
    # Volta para o jogador 2
    lw ra, 12(sp)
    lw s0, 8(sp)
    lw s1, 4(sp)
    addi sp, sp, 16
    j le_mv2

fim_rodada2:
    lw ra, 12(sp)
    lw s0, 8(sp)
    lw s1, 4(sp)
    addi sp, sp, 16
    ret
#===========================================================
# ===========================
# verifica_fim
# Saída: se fim -> j acabou ; senão ret
# ==========================
verifica_fim:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    sw s1, 4(sp)

    mv t0, a0           # endereço base do vetor
    li t1, 0            # soma jogador 1
    li t2, 0            # soma jogador 2

    # Soma vet[0..5] (jogador 1)
    lw t3, buraco1      # número de casas do jogador 1 (ex: 6)
    mv t4, t0
loop_j1:
    lw t5, 0(t4)
    add t1, t1, t5
    addi t4, t4, 4
    addi t3, t3, -1
    bnez t3, loop_j1


    # Soma vet[7..12] (jogador 2)
    mv t4, t0
    lw t3, buraco1
    addi t3, t3, 1       # pula o buraco do jogador 1 e vai pro espaço do jogador 2
    li t6, 4
    mul t3, t3, t6
    add t4, t4, t3		#em t4 aplica a posicao do começo do jogador 2
    lw t3, buraco1       # reinicia contador
    
loop_j2:
    lw t5, 0(t4)
    add t2, t2, t5
    addi t4, t4, 4
    addi t3, t3, -1
    bnez t3, loop_j2

    # Verifica fim do jogo
    beqz t1, fim_jogo
    beqz t2, fim_jogo


    # Verifica
    beqz t1, fim_jogo   # jogador 1 sem pedras
    beqz t2, fim_jogo   # jogador 2 sem pedras

    # restaura e retorna
    lw ra, 12(sp)
    lw s0, 8(sp)
    lw s1, 4(sp)
    addi sp, sp, 16
    ret

fim_jogo:
    lw ra, 12(sp)
    lw s0, 8(sp)
    lw s1, 4(sp)
    addi sp, sp, 16
    j acabou
#=========================================================
# ==========================
# fim de jogo - coleta, compara e termina
# ==========================
acabou:
    la a0, fim_do_jogo
    li a7, 4
    ecall

    # Recolhe sementes restantes do lado jogador1 (vet[0..5]) para o buraco vet[6]
    la t0, vet
    lw t1, buraco1
    li t2, 0
sum_left:
    lw t3, 0(t0)
    add t2, t2, t3
    sw zero, 0(t0)
    addi t0, t0, 4
    addi t1, t1, -1
    bnez t1, sum_left

	mv t4, t0   # buraco jogador 1
    lw t5, 0(t4)
    add t5, t5, t2
    sw t5, 0(t4)

    # Recolhe sementes do lado jogador2 (vet[a..b]) para o buraco do jogador 2
    addi t4, t4, 4
    mv t0, t4   # primeira casa jogador 2
    lw t1, buraco1
    li t2, 0
sum_right:
    lw t3, 0(t0)
    add t2, t2, t3
    sw zero, 0(t0)
    addi t0, t0, 4
    addi t1, t1, -1
    bnez t1, sum_right

    mv t4, t0   # buraco jogador 2
    lw t5, 0(t4)
    add t5, t5, t2
    sw t5, 0(t4)

    call mostra_tabuleiro

    # Carrega os buracos finais e compara
    la t6, vet
    li t1, 4
    lw t2, buraco1
    mul t2, t2, t1 #posicao buraco 1
    lw t3, buraco2
    mul t3, t3, t1 #posicao buraco 2
    add t6, t6, t2
    lw t4, 0(t6)      # t4 = buraco 1
    la t0, vet
    add t0, t0, t3
    lw t5, 0(t0)      # t5 = buraco 2

    beq t5, t4, empatou
    bgt t4, t5, j1
    j j2

empatou:
	addi s11, s11, 1
    la a0, empate
    li a7, 4
    ecall
    j encerrar

j1:
	addi s9, s9, 1
    la a0, win1
    li a7, 4
    ecall
    j encerrar

j2:
	addi s10, s10, 1
    la a0, win2
    li a7, 4
    ecall
    j encerrar

encerrar:
    la a0, novo_jogo
    li a7, 4
    ecall

    li a7, 5
    ecall
	mv t0, a0 #le verificacao de jogar novamente

    la a0, nova_linha
    li a7, 4
    ecall

    bne t0, zero, reinicia #se escolha != 0, reinicia o jogo

    li a7, 10 #encerra o programa
    ecall

reinicia:
    j jogos
#==================================================================
# ============================
# carrega_tabuleiro
# =============================
carrega_tabuleiro:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    sw s1, 4(sp)

    mv t0, a0 # t0 = base
    li t1, 4  # valor padrão
    li t2, 0
    lw t3, vet_size # tamanho do vetor

    # Inicializa todas as casas com 4 e os buracos com 0
    li t2, 0
    la t0, vet
loop_carrega:
    beq t2, t3, encerra_carrega
    lw t4, buraco1
    beq t2, t4, pula_buraco #buraco
    lw t4, buraco2
    beq t2, t4, pula_buraco #buraco
    sw t1, 0(t0)
    addi t0, t0, 4
    addi t2, t2, 1
    j loop_carrega
pula_buraco:
    sw zero, 0(t0)     # zera buraco
    addi t0, t0, 4
    addi t2, t2, 1
    j loop_carrega

encerra_carrega:
    la a0, c_tabuleiro
    li a7, 4
    ecall

    lw ra, 12(sp)
    lw s0, 8(sp)
    lw s1, 4(sp)
    addi sp, sp, 16
    ret
#====================================================================
# =======================
# mostra_tabuleiro
# =======================
mostra_tabuleiro:
    addi sp, sp, -16
    sw ra, 12(sp)
    sw s0, 8(sp)
    sw s1, 4(sp)

    la a0, texto_topo
    li a7, 4
    ecall

    la a0, linha_sup
    li a7, 4
    ecall

    # Linha 1 jogador 2 - casas superiores imprime 12 a 7
    la a0, barra
    li a7, 4
    ecall
    la a0, espaco_tab
    li a7, 4
    ecall

    la t1, vet
    lw t0, buraco2
    li t2, 4
    mul t0, t0, t2
    addi t0, t0, -4
    add t1, t1, t0      # posição buraco2 - 1
    lw t2, buraco1 #tamanho das casas
loop_cima:
    lw t3, 0(t1)
    la a0, barra
    li a7, 4
    ecall
    la a0, espaco
    li a7, 4
    ecall
    mv a0, t3
    li a7, 1
    ecall
    la a0, espaco
    li a7, 4
    ecall
    addi t1, t1, -4
    addi t2, t2, -1
    bnez t2, loop_cima

    la a0, barra
    li a7, 4
    ecall
    la a0, espaco_tab
    li a7, 4
    ecall
    la a0, barra
    li a7, 4
    ecall
    la a0, nova_linha
    li a7, 4
    ecall

    # Linha do meio - imprime os buracos
    la t1, vet
    lw t0, buraco2
    li t2, 4
    mul t0, t0, t2
    add t1, t1, t0
    lw t3, 0(t1)           # buraco jogador 2
    
    la a0, barra
    li a7, 4
    ecall
    la a0, espaco
    li a7, 4
    ecall
    la a0, espaco
    li a7, 4
    ecall
    mv a0, t3
    li a7, 1 #imprime o numero do buraco jogador 2
    ecall
    la a0, espaco
    li a7, 4
    ecall
    la a0, espaco
    li a7, 4
    ecall
    la a0, linha_meio
    li a7, 4
    ecall

    la t2, vet
    lw t0, buraco1
    li t3, 4
    mul t0, t0, t3
    add t2, t2, t0       # buraco jogador 1
    lw t3, 0(t2)
    
    la a0, espaco
    li a7, 4
    ecall
    la a0, espaco
    li a7, 4
    ecall
    mv a0, t3
    li a7, 1 #imprime o numero do buraco
    ecall
    la a0, espaco
    li a7, 4
    ecall
    la a0, espaco
    li a7, 4
    ecall
    la a0, barra
    li a7, 4
    ecall
    la a0, nova_linha
    li a7, 4
    ecall

    # Linha inferior (Jogador 1) - 0 a 5
    la a0, barra
    li a7, 4
    ecall
    la a0, espaco_tab
    li a7, 4
    ecall
    la t1, vet
    lw t2, buraco1
loop_baixo:
    la a0, barra
    li a7, 4
    ecall
    lw t3, 0(t1)
    la a0, espaco
    li a7, 4
    ecall
    mv a0, t3
    li a7, 1
    ecall
    la a0, espaco
    li a7, 4
    ecall
    addi t1, t1, 4
    addi t2, t2, -1
    bnez t2, loop_baixo
    
    la a0, barra
    li a7, 4
    ecall
    la a0, espaco_tab
    li a7, 4
    ecall
    la a0, barra
    li a7, 4
    ecall
    la a0, nova_linha
    li a7, 4
    ecall
    la a0, linha_sup
    li a7, 4
    ecall
    la a0, texto_inf
    li a7, 4
    ecall

    lw ra, 12(sp)
    lw s0, 8(sp)
    lw s1, 4(sp)
    addi sp, sp, 16
    ret

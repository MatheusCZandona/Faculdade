class Automato:

    def __init__(self):
        self.palavras = []
        self.alfabeto = set()
        self.estados = set()
        self.finais = set()
        self.transicoes = {}
        self.inicial = 0
        self.inalcancaveis = set()
        self.mortos = set()

    def carregar_palavras(self, nome_arquivo):

        with open(nome_arquivo, "r", encoding="utf-8") as arquivo:

            for linha in arquivo:

                palavra = linha.strip()

                if palavra == "":
                    continue

                self.palavras.append(palavra)

                for letra in palavra:
                    self.alfabeto.add(letra)

    def construir_automato(self):

        self.estados.add(self.inicial) #adiciona o estado inicial aos estados

        for palavra in self.palavras:
            estado_atual = self.inicial # começa no estado inicial

            for letra in palavra:
                proximo_estado = (estado_atual, letra) # transição para o próximo estado pela letra

                if proximo_estado not in self.transicoes: # cria um novo estado se a transição não existe
                    self.transicoes[proximo_estado] = len(self.estados) # cria novo estado
                    self.estados.add(len(self.estados)) # adiciona novo estado ao conjunto de estados

                estado_atual = self.transicoes[proximo_estado] # vai para o próximo estado

            self.finais.add(estado_atual) #adiciona estado atual aos estados finais

    def printar_automato(self):
        print("Palavras:", self.palavras)
        print("Alfabeto:", self.alfabeto)
        print("Estados:", self.estados)
        print("Estado Inicial:", self.inicial)
        print("Estados Finais:", self.finais)
        print("Transições:", self.transicoes)
        for transicao, estado in self.transicoes.items():
            print(f"Transição: {transicao} -> Estado: {estado}")

        print("tabela de transições:")
        print("   ", end="")
        for letra in self.alfabeto:
            print(f"   {letra}", end="")
        print()

        for estado in self.estados:
            if estado in self.finais:
                print(f" *{estado}", end="")
            else:
                print(f"{estado:>3}", end="")

            for letra in self.alfabeto:
                proximo_estado = self.transicoes.get((estado, letra), None)
                if proximo_estado is not None:
                    print(f" {proximo_estado:>3}", end="")
                else:
                    print("   -", end="")
            print()

    def determinizar(self):
        pass

    def minimizar(self):
        conjunto_transicoes = [set() for _ in range(len(self.estados))]
        for (origem, simbolo), destino in self.transicoes.items():
            conjunto_transicoes[origem].add(destino) #adiciona transições diretas

        mudou = True
        while mudou: #adiciona as transicoes indiretas enquanto tiver mudanças
            mudou = False
            for estado in range(len(conjunto_transicoes)):
                novos = set()

                for alcancado in conjunto_transicoes[estado]:
                    novos |= conjunto_transicoes[alcancado]

                tamanho_antigo = len(conjunto_transicoes[estado])
                conjunto_transicoes[estado] |= novos
                if len(conjunto_transicoes[estado]) > tamanho_antigo:
                    mudou = True
        
        #achar estados inalcançáveis
        inalcancaveis = set()
        for estado in self.estados:
            if estado == self.inicial:
                continue
            if estado not in conjunto_transicoes[self.inicial]:
                inalcancaveis.add(estado)

        #achar estados mortos
        mortos = set()
        for estado in self.estados:
            alcança_final = False

            if estado in self.finais:
                alcança_final = True
            else:
                for final in self.finais:
                    if final in conjunto_transicoes[estado]:
                        alcança_final = True
                        break

            if not alcança_final:
                mortos.add(estado)

        #remover estados mortos e inalcançáveis
        remover = mortos | inalcancaveis
        self.estados -= remover
        self.finais -= remover
        
        #remover estados mortos e inalcancaveis das transições
        for chave in list(self.transicoes.keys()):
            origem, simbolo = chave
            destino = self.transicoes[chave]

            if origem in remover or destino in remover:
                del self.transicoes[chave]
        
    def estado_de_erro(self):
        pass

automato = Automato()
automato.carregar_palavras("tokens.txt")
automato.construir_automato()
automato.printar_automato()
automato.determinizar()
automato.minimizar()
automato.estado_de_erro()
class Automato:

    def __init__(self):
        self.palavras = []
        self.alfabeto = set()
        self.estados = set()
        self.finais = set()
        self.transicoes = {}
        self.inicial = 0

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

        self.estados.add(self.inicial) # Adiciona o estado inicial ao conjunto de estados

        for palavra in self.palavras:
            estado_atual = self.inicial # Começa no estado inicial para cada palavra

            for letra in palavra:
                proximo_estado = (estado_atual, letra) # Define a transição para o próximo estado com base no estado atual e na letra

                if proximo_estado not in self.transicoes: # Se a transição ainda não existe, cria um novo estado para ela
                    self.transicoes[proximo_estado] = len(self.estados) # Atribui um novo número de estado para a transição e adiciona ao conjunto de estados
                    self.estados.add(len(self.estados)) # Adiciona o novo estado ao conjunto de estados

                estado_atual = self.transicoes[proximo_estado] # Move para o próximo estado com base na transição definida

            self.finais.add(estado_atual)

    def printar_automato(self):
        print("Palavras:", self.palavras)
        print("Alfabeto:", self.alfabeto)
        print("Estados:", self.estados)
        print("Estado Inicial:", self.inicial)
        print("Estados Finais:", self.finais)
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
        pass

    def estado_de_erro(self):
        pass

automato = Automato()
automato.carregar_palavras("tokens.txt")
automato.construir_automato()
automato.printar_automato()
automato.determinizar()
automato.minimizar()
automato.estado_de_erro()
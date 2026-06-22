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
        self._proximo_id = 1

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

        self.estados.add(self.inicial)  # adiciona o estado inicial aos estados

        for palavra in self.palavras:
            estado_atual = self.inicial  # começa no estado inicial

            for letra in palavra:
                proximo_estado = (estado_atual, letra)  # transição para o próximo estado pela letra

                if proximo_estado not in self.transicoes:  # cria um novo estado se a transição não existe
                    self.transicoes[proximo_estado] = self._proximo_id
                    self.estados.add(self._proximo_id)
                    self._proximo_id += 1

                estado_atual = self.transicoes[proximo_estado]  # vai para o próximo estado

            self.finais.add(estado_atual)  # adiciona estado atual aos estados finais

    def determinizar(self):
        # Constrói o dicionário de transições do AFND em que cada par
        # (estado, símbolo) aponta para um conjunto de destinos.
        nfa_transicoes = {}
        for (origem, simbolo), destino in self.transicoes.items():
            destino_set = destino if isinstance(destino, set) else {destino}
            nfa_transicoes.setdefault((origem, simbolo), set()).update(destino_set)

        # Cálculo do epsilon-closure: conjunto de todos os estados
        # alcançáveis a partir de um conjunto inicial por transições vazias.
        def epsilon_closure(estados):
            fechamento = set(estados)
            pilha = list(estados)
            while pilha:
                estado_atual = pilha.pop()
                for destino in nfa_transicoes.get((estado_atual, ""), set()):
                    if destino not in fechamento:
                        fechamento.add(destino)
                        pilha.append(destino)
            return fechamento

        # Estado inicial do DFA é o epsilon-closure do estado inicial do NFA.
        estado_inicial = frozenset(epsilon_closure({self.inicial}))
        dfa_map = {estado_inicial: 0}
        dfa_estados = {0}
        dfa_finais = set()
        dfa_transicoes = {}
        fila = [estado_inicial]

        # Marcar estado inicial como final se qualquer estado NFA nele for final.
        if estado_inicial & self.finais:
            dfa_finais.add(0)

        # Processa cada estado do DFA criado a partir de subconjuntos do NFA.
        while fila:
            estado_conjunto = fila.pop(0)
            estado_dfa = dfa_map[estado_conjunto]

            for simbolo in self.alfabeto:
                if simbolo == "":
                    continue

                destinos = set()
                for estado in estado_conjunto:
                    destinos |= nfa_transicoes.get((estado, simbolo), set())

                destinos = epsilon_closure(destinos)
                if not destinos:
                    continue

                estado_destino = frozenset(destinos)
                if estado_destino not in dfa_map:
                    dfa_map[estado_destino] = len(dfa_map)
                    dfa_estados.add(dfa_map[estado_destino])
                    fila.append(estado_destino)
                    if estado_destino & self.finais:
                        dfa_finais.add(dfa_map[estado_destino])

                dfa_transicoes[(estado_dfa, simbolo)] = dfa_map[estado_destino]

        # Atualiza o autômato para a versão determinística.
        self.estados = dfa_estados
        self.finais = dfa_finais
        self.transicoes = dfa_transicoes
        self.inicial = 0
        # Reseta o contador para o maior ID existente + 1
        self._proximo_id = max(self.estados) + 1 if self.estados else 1

    def minimizar(self):
        # não lista indexada por inteiros contíguos
        conjunto_transicoes = {estado: set() for estado in self.estados}

        for (origem, simbolo), destino in self.transicoes.items():
            if origem in conjunto_transicoes:
                conjunto_transicoes[origem].add(destino)  # adiciona transições diretas

        mudou = True
        while mudou:  # adiciona as transicoes indiretas enquanto tiver mudanças
            mudou = False
            for estado in list(self.estados):
                novos = set()

                for alcancado in conjunto_transicoes[estado]:
                    if alcancado in conjunto_transicoes:
                        novos |= conjunto_transicoes[alcancado]

                tamanho_antigo = len(conjunto_transicoes[estado])
                conjunto_transicoes[estado] |= novos
                if len(conjunto_transicoes[estado]) > tamanho_antigo:
                    mudou = True

        # achar estados inalcançáveis
        inalcancaveis = set()
        for estado in self.estados:
            if estado == self.inicial:
                continue
            if estado not in conjunto_transicoes[self.inicial]:
                inalcancaveis.add(estado)

        # achar estados mortos
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

        # remover estados mortos e inalcançáveis
        remover = mortos | inalcancaveis
        self.estados -= remover
        self.finais -= remover

        # remover estados mortos e inalcancaveis das transições
        for chave in list(self.transicoes.keys()):
            origem, simbolo = chave
            destino = self.transicoes[chave]

            if origem in remover or destino in remover:
                del self.transicoes[chave]

    def adicionar_estado_de_erro(self):
        # Cria um estado de erro que representa transições indefinidas.
        estado_erro = max(self.estados) + 1 if self.estados else 1
        adicionou = False

        for estado in list(self.estados):
            for simbolo in self.alfabeto:
                if (estado, simbolo) not in self.transicoes:
                    # Qualquer transição ausente aponta para o estado de erro.
                    self.transicoes[(estado, simbolo)] = estado_erro
                    adicionou = True

        if adicionou:
            self.estados.add(estado_erro)
            for simbolo in self.alfabeto:
                # O estado de erro se auto-loopa em todos os símbolos.
                self.transicoes[(estado_erro, simbolo)] = estado_erro

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
                    if isinstance(proximo_estado, set):
                        proximo_estado = "{" + ",".join(str(e) for e in sorted(proximo_estado)) + "}"
                    print(f" {proximo_estado:>3}", end="")
                else:
                    print("   -", end="")
            print()


automato = Automato()
automato.carregar_palavras("tokens.txt")
automato.construir_automato()
automato.printar_automato()
automato.determinizar()
automato.minimizar()
automato.adicionar_estado_de_erro()
automato.printar_automato()
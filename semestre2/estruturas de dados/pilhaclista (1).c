#include <stdio.h>
#include <stdlib.h>

// Estrutura de nó da pilha (lista encadeada)
typedef struct Node {
    char data;
    struct Node* next;
} Node;

// Estrutura da pilha que contém um ponteiro para o topo
typedef struct {
    Node* topo;
} Pilha;

// Inicializa a pilha (definindo topo como NULL)
void inicializaPilha(Pilha* p) {
    p->topo = NULL;
}

// Verifica se a pilha está vazia
int pilhaVazia(Pilha* p) {
    return p->topo == NULL ? 1 : 0;
}

// Empilha um caractere na pilha
int empilhar(Pilha* p, char c) {
    Node* novoNo = (Node*)malloc(sizeof(Node));  // Aloca memória para o novo nó
    if (novoNo == NULL) {  // Verifica se a alocação foi bem-sucedida
        printf("Erro: Memória insuficiente!\n");
        return 0;
    }

    novoNo->data = c;       // Armazena o caractere no novo nó
    novoNo->next = p->topo; // O novo nó aponta para o antigo topo da pilha
    p->topo = novoNo;       // O topo agora é o novo nó
    return 1;
}

// Desempilha o caractere do topo da pilha
char desempilhar(Pilha* p) {
    if (pilhaVazia(p)) {  // Verifica se a pilha está vazia
        printf("Erro: Pilha vazia!\n");
        return '\0';
    }

    Node* aux = p->topo;     // Guarda o nó atual (topo) que será removido
    char valor = aux->data;  // Armazena o valor do nó
    p->topo = aux->next;     // Atualiza o topo para o próximo nó
    free(aux);               // Libera a memória do nó removido
    return valor;
}

// Função para liberar toda a memória da pilha
void freePilha(Pilha* p) {
    Node* aux;
    while (p->topo != NULL) {
        aux = p->topo;
        p->topo = p->topo->next;
        free(aux);
    }
}

int main() {
    Pilha p;
    inicializaPilha(&p);  // Inicializa a pilha como vazia
    
    char c;
    printf("Digite uma string:\n");

    // Lê os caracteres da string e os empilha
    while ((c = getchar()) != '\n' && c != EOF) {
        empilhar(&p, c);
    }

    printf("Esvaziando a pilha (string invertida):\n");
    // Desempilha os caracteres, imprimindo-os na ordem inversa
    while (!pilhaVazia(&p)) {
        printf("%c", desempilhar(&p));
    }

    printf("\n");

    // Libera a memória alocada pela pilha
    freePilha(&p);

    return 0;
}

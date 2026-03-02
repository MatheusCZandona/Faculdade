#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define MAX 100

typedef struct {
    char itens[MAX];
    int topo;
} Pilha;

void inicializaPilha(Pilha* p) {
    p->topo = -1;
}

bool pilhaVazia(Pilha* p) {
    return p->topo == -1;
}

bool pilhaCheia(Pilha* p) {
    return p->topo == MAX - 1;
}

bool empilhar(Pilha* p, char c) {
    if (pilhaCheia(p)) {
        printf("Erro: Pilha cheia!\n");
        return false;
    }
    p->itens[++(p->topo)] = c;
    return true;
}

char desempilhar(Pilha* p) {
    if (pilhaVazia(p)) {
        printf("Erro: Pilha vazia!\n");
        return '\0';
    }
    return p->itens[(p->topo)--];
}

int main() {
    Pilha p;
    inicializaPilha(&p);
    
    char c;
    printf("Digite uma string:\n");

    while ((c = getchar()) != '\n' && c != EOF) {
        empilhar(&p, c);
    }

    printf("Esvaziando a pilha:\n");
    while (!pilhaVazia(&p)) {
        printf("%c", desempilhar(&p));
    }
    
    printf("\n");
    return 0;
}


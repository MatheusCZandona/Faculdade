#include <stdio.h>
#include <stdlib.h>

typedef struct TQueue {
	char letra;
	struct TQueue *next;
} EQueue;

typedef struct {
	EQueue *head;
	EQueue *tail;
} Fila;

void inicializaFila(Fila* f) {
	f->head = NULL;
	f->tail = NULL;
}

int filaVazia(Fila* f) {
	return (f->head == NULL);
}

void enfileirar(Fila* f, char letra) {
	EQueue *aux;
	aux = (EQueue *) malloc(sizeof(EQueue));
	aux->letra = letra;
	aux->next = NULL;

	if(f->head == NULL) {
		f->head = aux;
		f->tail = aux;
	} else {
		f->tail->next = aux;
		f->tail = aux;
	}
}

char desenfileirar(Fila* f) {
	if (filaVazia(f)) {
		printf("Fila vazia!\n");
		return '\0';
	}

	char letra = f->head->letra;
	EQueue *aux = f->head;

	if(f->head == f->tail) {
		f->head = f->tail = NULL;
	} else {
		f->head = f->head->next;
	}

	free(aux);
	return letra;
}


void freeAll(Fila *queue) {
	EQueue *aux;
	while (queue->head != NULL) {
		aux = queue->head;
		queue->head = queue->head->next;
		free(aux);
	}
	queue->tail = NULL;
}

int main() {
	Fila f;
	inicializaFila(&f);

	char c;
	printf("Digite uma string:\n");

	while ((c = getchar()) != '\n' && c != EOF) {
		enfileirar(&f, c);
	}

	printf("Esvaziando a fila:\n");
	while (!filaVazia(&f)) {
		printf("%c", desenfileirar(&f));
	}

	printf("\n");

	freeAll(&f);

	return 0;
}

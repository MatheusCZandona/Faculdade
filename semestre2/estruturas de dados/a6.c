#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct numeros {
  int id;
  struct numeros *next;
};
typedef struct numeros Numeros;

Numeros *newElement(int id) {
  Numeros *aux;
  aux = malloc(sizeof(Numeros));
  aux->id = id;
  aux->next = NULL;
  return aux;
}

Numeros *insertElement(Numeros *head, Numeros *new) {
  Numeros *aux;
  if (head == NULL) {
    head = new;
    return new;
  }

  aux = head;
  while (aux->next != NULL) {
    aux = aux->next;
  }
  aux->next = new;

  return head;
}

double contagem(Numeros *head){
    Numeros *aux;
    int contagem;
    for (aux = head; aux != NULL; aux = aux->next) {
      if(aux->id >= 10 && aux->id <=20){
          contagem++;
      }
    }
    return contagem;
}

void printList(Numeros *head, double porc) {
  Numeros *aux = head;
  printf("Lista de valores:\n");

  for (aux = head; aux != NULL; aux = aux->next) {
    printf("Número: %d\n", aux->id);
  }
  printf("%% entre 10 e 20: %.2lf%%\n", porc);
}

void freeFolks(Numeros *head) {
  Numeros *aux;
  while (head != NULL) {
    aux = head->next;
    free(head);
    head = aux;
  }
}

int main() {

  Numeros *head = NULL;
  int n, a;

  scanf("%d", &n);

  for (int i = 0; i < n; i++) {  
    scanf("%d", &a);
    head = insertElement(head, newElement(a));
  }
  double cont = contagem(head);
  double porc = (cont / n) * 100;
  printList(head, porc);
  freeFolks(head);

  return 0;
}

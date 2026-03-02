#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct numeros{
    int id;
    struct numeros *next;
};
typedef struct numeros Numeros;

Numeros *newElement(int id){
  Numeros *aux;
  aux = malloc(sizeof(Numeros));
  aux->id = id;
  aux->next = NULL;
  return aux;
}

Numeros *insertElement(Numeros *head, Numeros *new){

    Numeros *aux;
    if(head == NULL){
      head = new;
      return new;
    }

    aux = head;
    while(aux->next != NULL){
        aux = aux->next;
    }
    aux->next = new;

    return head;

}

void printList(Numeros *head, int n) {
    Numeros *aux = head;

    while (aux->next != NULL) {
        aux = aux->next;
    }
    printf("O fatorial de %d é: %d\n", n, aux->id);

    printf("Passos para calcular o fatorial\n");
    int a = 1;
    for (aux = head; aux != NULL; aux = aux->next) {
        printf("Passo %d: %d\n", a, aux->id);
        a++;
    }
    printf("\n");
}

void freeFolks(Numeros *head){
    Numeros *aux;
    aux = head;
    while (aux != NULL){
        aux = aux->next;
        free(head);
        head = aux;
    }
 }


int main(){

  Numeros *head = NULL, *aux;
  int n, a, fat;
  scanf("%d", &n);
  if(n == 0){
      head = insertElement(head, newElement(1));
  }
  a = 1;
  fat = 1;
  while(a<=n){
    head = insertElement(head, newElement(fat));
    a++;
    fat *=a;
  }

  printList(head, n);
  freeFolks(head);

    return 0;
}
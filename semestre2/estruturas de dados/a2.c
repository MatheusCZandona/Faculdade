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

void printList(Numeros *head){
    Numeros *aux;
    printf("Somas parciais:\n");
    int soma = 1;
    for(aux = head; aux != NULL; aux = aux->next){
        printf("%d soma: %d\n", soma, aux->id);
        soma += 1;
    }

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
  int n1, n2, mult, soma;
  scanf("%d", &n1);
  scanf("%d", &n2);
  mult = n1 * n2;
  soma = n1;
  if(n1 == 0 || n2 == 0){
      printf("Valores inválidos");
      return 1;
  }
  while(soma <= mult){
    head = insertElement(head, newElement(soma));
    soma += n1;
  }

  printList(head);
  printf("O resultado de %d * %d é: %d\n", n1, n2, mult);
  freeFolks(head);

    return 0;
}
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
    printf("Lista de valores: ");
    for(aux = head; aux != NULL; aux = aux->next){
        printf("%d ", aux->id);
    }
    printf("\n");

}

void somaValores(Numeros *head, int n){
    Numeros *aux;
    int soma;
    for(aux = head; aux != NULL; aux = aux->next){
        soma += aux->id;
    }
    printf("A soma de todos os números de 1 a %d é: %d\n", n, soma);
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
  int n;
  scanf("%d", &n);

  for(int i = 1; i <= n; i++){  
    head = insertElement(head, newElement(i));
  }

  printList(head);
  somaValores(head,n);
  freeFolks(head);

    return 0;
}
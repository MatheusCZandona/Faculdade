#include <stdio.h>
#include <stdlib.h>
#include <string.h>
struct people {
  int salario;
  int filhos;
  struct people *next;
};
typedef struct people People;

People *newElement(int salario, int filhos) {
  People *aux;
  aux = malloc(sizeof(People));
  aux->salario = salario;
  aux->filhos = filhos;
  aux->next = NULL;
  return aux;
}

People *insertElement(People *head, People *new) {
  People *aux;
  if (head == NULL) {
    return new;
  }

  aux = head;
  while (aux->next != NULL) {
    aux = aux->next;
  }
  aux->next = new;

  return head;
}

double mediaSalario(People *head, int total) {
  if (total == 0) return 0.0;

  People *aux;
  int soma = 0;
  for (aux = head; aux != NULL; aux = aux->next) {
    soma += aux->salario;
  }

  return (double)soma / total;
}

double mediaFilhos(People *head, int total) {
  if (total == 0) return 0.0;

  People *aux;
  int soma = 0;
  for (aux = head; aux != NULL; aux = aux->next) {
    soma += aux->filhos;
  }

  return (double)soma / total;
}

void printList(People *head, double medias, double mediaf) {
  People *aux = head;

  for (aux = head; aux != NULL; aux = aux->next) {
    printf("Salário: %d\nFilhos: %d\n", aux->salario, aux->filhos);
  }
  printf("Média salários: %.2lf\n", medias);
  printf("Média filhos: %.2lf\n", mediaf);
}

void freeFolks(People *head) {
  People *aux;
  while (head != NULL) {
    aux = head->next;
    free(head);
    head = aux;
  }
}

int main() {
  People *head = NULL;
  int s, f, total = 0;

  while (1) {
    scanf("%d", &s);
    if (s <= 0) {
      break;
    }
    scanf("%d", &f);
    if (f <= 0) {
      break;
    }
    head = insertElement(head, newElement(s, f));
    total++;
  }

  double medias = mediaSalario(head, total);
  double mediaf = mediaFilhos(head, total);
  printList(head, medias, mediaf);
  freeFolks(head);

  return 0;
}
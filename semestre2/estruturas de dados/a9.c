#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

struct aluno {
    int matricula;
    float notas[5];
    float media;
    struct aluno *next;
};
typedef struct aluno Aluno;


Aluno *newElement(int matricula, float notas[]) {
    Aluno *aux = malloc(sizeof(Aluno));
    aux->matricula = matricula;

    float soma = 0.0;
    for (int i = 0; i < 5; i++) {
        aux->notas[i] = notas[i];
        soma += notas[i];
    }
    aux->media = soma / 5;
    aux->next = NULL;
    printf("Aluno: %d Média: %.2f\n", aux->matricula, aux->media);
    return aux;
}

Aluno *insertElement(Aluno *head, Aluno *new) {
  Aluno *aux;
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

double calculaMedia(Aluno *head, int totalalunos){
    Aluno *aux = head;
    double soma = 0.0;

    while(aux != NULL){
        soma += aux->media;
        aux = aux->next;
    }
    return soma / totalalunos;
}



void freeFolks(Aluno *head) {
  Aluno *aux;
  while (head != NULL) {
    aux = head->next;
    free(head);
    head = aux;
  }
}


int main(){
    Aluno *head = NULL;
    int matricula, alunos = 0;
    float notas[5];

    while (1) {
        printf("Matrícula: ");
        scanf("%d", &matricula);

        if (matricula == 0) {
            break;
        }

        for (int i = 0; i < 5; i++) {
            printf("Nota %d: ", i + 1);
            scanf("%f", &notas[i]);
        }

        head = insertElement(head, newElement(matricula, notas));
        alunos++;
    }


    if (alunos > 0) {
        float mediaturma = calculaMedia(head, alunos);
        printf("Média geral da turma: %.1f\n", mediaturma);
    }

    freeFolks(head);

    return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

struct partida {
  char time1;
  int gols1;
  char time2;
  int gols2;
  struct partida *next;
};
typedef struct partida Partida;

typedef struct {
  char times;
  int pontos;
} times;

times Timea, Timeb, Timec, Timed;

Partida *newElement(char time1, int gols1, char time2, int gols2) {
  Partida *aux;
  aux = malloc(sizeof(Partida));
  aux->time1 = time1;
  aux->gols1 = gols1;
  aux->time2 = time2;
  aux->gols2 = gols2;
  aux->next = NULL;
  return aux;
}

Partida *insertElement(Partida *head, Partida *new) {
  Partida *aux;
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

void contaPontos(Partida *head) {
  Partida *aux = head;
  for(aux = head; aux->next!=NULL; aux=aux->next);

  if (aux->time1 != aux->time2) {
    if (aux->gols1 > aux->gols2) {
      if(aux->time1 == 'A') {
        Timea.pontos+=3;
      } else if(aux->time1 == 'B') {
        Timeb.pontos+=3;
      } else if(aux->time1 == 'C') {
        Timec.pontos+=3;
      } else if(aux->time1 == 'D') {
        Timed.pontos+=3;
      }
    } else if (aux->gols2 < aux->gols1) {
      if(aux->time2 == 'A') {
        Timea.pontos+=3;
      } else if(aux->time2 == 'B') {
        Timeb.pontos+=3;
      } else if(aux->time2 == 'C') {
        Timec.pontos+=3;
      } else if(aux->time2 == 'D') {
        Timed.pontos+=3;
      }
    } else {
      if(aux->time1 == 'A' && aux->time2 == 'B') {
        Timea.pontos++;
        Timeb.pontos++;
      } else if(aux->time1 == 'A' && aux->time2 == 'C') {
        Timea.pontos++;
        Timec.pontos++;
      } else if(aux->time1 == 'A' && aux->time2 == 'D') {
        Timea.pontos++;
        Timed.pontos++;
      } else if(aux->time1 == 'B' && aux->time2 == 'C') {
        Timeb.pontos++;
        Timec.pontos++;
      } else if(aux->time1 == 'B' && aux->time2 == 'D') {
        Timeb.pontos++;
        Timed.pontos++;
      } else if(aux->time1 == 'C' && aux->time2 == 'D') {
        Timec.pontos++;
        Timed.pontos++;
      } else if(aux->time1 == 'B' && aux->time2 == 'A') {
        Timeb.pontos++;
        Timea.pontos++;
      } else if(aux->time1 == 'C' && aux->time2 == 'A') {
        Timec.pontos++;
        Timea.pontos++;
      } else if(aux->time1 == 'C' && aux->time2 == 'B') {
        Timec.pontos++;
        Timeb.pontos++;
      } else if(aux->time1 == 'D' && aux->time2 == 'A') {
        Timed.pontos++;
        Timea.pontos++;
      } else if(aux->time1 == 'D' && aux->time2 == 'B') {
        Timed.pontos++;
        Timeb.pontos++;
      } else if(aux->time1 == 'D' && aux->time2 == 'C') {
        Timed.pontos++;
        Timec.pontos++;
      }
    }
  }
  aux = aux->next;


}

char Campeao() {

  char campeao;
  int cont;
  int maior = fmax(fmax(Timea.pontos, Timeb.pontos), fmax(Timec.pontos, Timed.pontos));
  if(maior == Timea.pontos) {
    campeao = 'A';
    cont++;
  }
  if(maior == Timeb.pontos) {
    campeao = 'B';
    cont++;
  }
  if(maior == Timec.pontos) {
    campeao = 'C';
    cont++;
  }
  if(maior == Timed.pontos) {
    campeao = 'D';
    cont++;
  }
  if (cont > 1) {
    campeao = 'X';
  }
  return campeao;
}


void printList(char campeao) {
  if(campeao == 'X') {
    printf("Não houve campeão\n");
  } else {
    printf("Campeão: %c\n", campeao);
  }
  printf("Time A: %d pontos.\n", Timea.pontos);
  printf("Time B: %d pontos.\n", Timeb.pontos);
  printf("Time C: %d pontos.\n", Timec.pontos);
  printf("Time D: %d pontos.\n", Timed.pontos);
}

void freeFolks(Partida *head) {
  Partida *aux;
  while (head != NULL) {
    aux = head->next;
    free(head);
    head = aux;
  }
}

int main() {
  Partida *head = NULL;
  char t1, t2, champ;
  int g1, g2, match;
    match = 1;

  Timea.times = 'A';
  Timea.pontos = 0;
  Timeb.times = 'B';
  Timeb.pontos = 0;
  Timec.times = 'C';
  Timec.pontos = 0;
  Timed.times = 'D';
  Timed.pontos = 0;

  printf("Digite um número par de times e gols para fechar uma partida com 2 times\n");

  while (1) {
      printf("Partida %d\n", match);
    printf("Time 1 (A, B, C ou D): ");
    scanf(" %c", &t1);
    if (t1 != 'A' && t1 != 'B' && t1 != 'C' && t1 != 'D') {
      break;
    }

    printf("Gols: ");
    scanf("%d", &g1);
    if (g1 < 0) {
      break;
    }

    printf("Time 2 (A, B, C ou D): ");
    scanf(" %c", &t2);
    if (t2 != 'A' && t2 != 'B' && t2 != 'C' && t2 != 'D') {
      break;
    }

    printf("Gols: ");
    scanf("%d", &g2);
    if (g2 < 0) {
      break;
    }

    head = insertElement(head, newElement(t1, g1, t2, g2));
    contaPontos(head);
    printf("\n");
    match++;
  }


  champ = Campeao();
  printList(champ);
  freeFolks(head);

  return 0;
}
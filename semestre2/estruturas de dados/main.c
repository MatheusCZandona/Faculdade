#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

struct _data {
    int dia;
    int mes;
    int ano;
    int hora;
    int minuto;
};
typedef struct _data Data;

struct _evento {
    int codigo;
    Data dataEvento;
    float duracao;
    char descricao[100];
    struct _evento *next;
};
typedef struct _evento Evento;

// Função para criar um novo evento
Evento *newElemento(int codigo, int dia, int mes, int ano, int hora,
                    int minuto, float duracao, const char *descricao) {
    Evento *new = (Evento *)malloc(sizeof(Evento));
    if (new == NULL) {
        fprintf(stderr, "Erro de alocação de memória\n");
        exit(EXIT_FAILURE);
    }
    new->codigo = codigo;
    new->dataEvento.dia = dia;
    new->dataEvento.mes = mes;
    new->dataEvento.ano = ano;
    new->dataEvento.hora = hora;
    new->dataEvento.minuto = minuto;
    new->duracao = duracao;
    strncpy(new->descricao, descricao, sizeof(new->descricao) - 1);
    new->descricao[sizeof(new->descricao) - 1] = '\0'; // Garantir que a string é nula
    new->next = NULL;
    return new;
}

int compararData(Data d1, Data d2) {
    if (d1.ano != d2.ano) {
        return d1.ano - d2.ano;
    } 
    if (d1.mes != d2.mes) {
        return d1.mes - d2.mes;
    } 
    if (d1.dia != d2.dia) {
        return d1.dia - d2.dia;
    } 
    if (d1.hora != d2.hora) {
        return d1.hora - d2.hora;
    } 
    return d1.minuto - d2.minuto;
}

// Função para calcular o fim do evento
void calcularFimEvento(Data *inicio, float duracao, Data *fim) {
    *fim = *inicio;
    int duracaoMinutos = (int)(duracao * 60);

    fim->minuto += duracaoMinutos % 60;
    fim->hora += duracaoMinutos / 60 + fim->minuto / 60;
    fim->minuto %= 60;

    if (fim->hora >= 24) {
        fim->hora -= 24;
        fim->dia++;

        // Lógica para o dia seguinte (considera apenas meses com 30 dias)
        if (fim->dia > 30) {
            fim->dia = 1;
            fim->mes++;
            if (fim->mes > 12) {
                fim->mes = 1;
                fim->ano++;
            }
        }
    }
}

// Função para verificar se dois eventos estão em conflito
bool conflito(Evento *existente, Evento *novo) {
    Data fimExistente, fimNovo;
    calcularFimEvento(&existente->dataEvento, existente->duracao, &fimExistente);
    calcularFimEvento(&novo->dataEvento, novo->duracao, &fimNovo);

    // Verifica se existe sobreposição
    if (compararData(existente->dataEvento, novo->dataEvento) == 0) {
        return compararData(novo->dataEvento, fimExistente) < 0;
    }

    if (compararData(novo->dataEvento, existente->dataEvento) < 0) {
        return compararData(fimNovo, existente->dataEvento) < 0;
    }

    return false;
}

// Função para adicionar evento na lista
bool adicionarEvento(Evento **lista, Evento *novo) {
    Evento *atual = *lista;
    Evento *anterior = NULL;

    // Percorre a lista até encontrar a posição correta
    while (atual != NULL && compararData(atual->dataEvento, novo->dataEvento) < 0) {
        anterior = atual;
        atual = atual->next;
    }

    // Verificar se há conflito
    if ((anterior != NULL && conflito(anterior, novo)) || 
        (atual != NULL && conflito(atual, novo))) {
        printf("Conflito de horário com o evento %d: %s\n", (anterior ? anterior->codigo : atual->codigo), 
               (anterior ? anterior->descricao : atual->descricao));
        return false;
    }

    // Inserir o novo evento na lista
    novo->next = atual;
    if (anterior == NULL) {
        *lista = novo; // Inserir no início da lista
    } else {
        anterior->next = novo; // Inserir no meio da lista
    }

    return true; // Evento adicionado com sucesso
}

// Função para consultar elemento da lista
void consultarEvento(Evento *lista, int data, int hora, int mes) {
    Evento *aux = lista;
    int cont = 0;

    while (aux != NULL) {
        if (hora == -1) {
            if (aux->dataEvento.dia == data && aux->dataEvento.mes == mes) {
                printf("Evento %d: %s\n", aux->codigo, aux->descricao);
                cont++;
            }
        } else if (aux->dataEvento.dia > data) {
            break;
        } else {
            if (aux->dataEvento.dia == data && aux->dataEvento.hora == hora && aux->dataEvento.mes == mes) {
                printf("Evento %d: %s\n", aux->codigo, aux->descricao);
                cont++;
                break;
            }
        }
        aux = aux->next;
    }

    if (cont == 0) {
        printf("Nenhum evento encontrado\n");
    }
}

// Função para alterar dados do evento
void alterarEvento(Evento *lista, float duracao, char descricao[100], int dia,
                   int hora) {
    Evento *aux = lista;

    while (aux != NULL) {
        if (aux->dataEvento.dia == dia && aux->dataEvento.hora == hora) {
            aux->duracao = duracao;
            strncpy(aux->descricao, descricao, sizeof(aux->descricao) - 1);
            aux->descricao[sizeof(aux->descricao) - 1] = '\0';
            printf("Evento alterado com sucesso\n");
            return;
        }
        aux = aux->next;
    }

    printf("Evento não encontrado\n");
}

// Função para remover evento da lista
void removerEvento(Evento **lista, int codigo) {
    Evento *atual = *lista;
    Evento *anterior = NULL;

    while (atual != NULL) {
        if (atual->codigo == codigo) {
            if (anterior == NULL) {
                *lista = atual->next; // Remover do início
            } else {
                anterior->next = atual->next; // Remover do meio ou fim
            }
            free(atual);
            printf("Evento %d removido\n", codigo);
            return;
        }
        anterior = atual;
        atual = atual->next;
    }

    printf("Evento com código %d não encontrado\n", codigo);
}

// Printar lista
void printList(Evento *lista) {
    Evento *aux = lista;

    if (aux == NULL) {
        printf("Agenda vazia\n");
        return;
    }

    while (aux != NULL) {
        printf("Evento %d: %s. Duração: %.2f horas\n", aux->codigo,
               aux->descricao, aux->duracao);
        printf("Dia: %02d/%02d/%04d - Hora: %02d:%02d\n", aux->dataEvento.dia,
               aux->dataEvento.mes, aux->dataEvento.ano, aux->dataEvento.hora,
               aux->dataEvento.minuto);
        aux = aux->next;
        printf("\n");
    }
}

// Liberar a memória
void freeFolks(Evento *head) {
    Evento *aux;
    while (head != NULL) {
        aux = head->next;
        free(head);
        head = aux;
    }
}

int main(void) {
    Evento *head = NULL;
    Evento *novo;
    int codigo, dia, mes, ano, hora, minuto, opcao, consulta;
    float duracao;
    char descricao[100];

    while (1) {
        printf("Digite a opção desejada\n");
        printf("1 - Adicionar evento.\n");
        printf("2 - Consultar evento.\n");
        printf("3 - Alterar evento.\n");
        printf("4 - Excluir evento.\n");
        printf("5 - Listar todos.\n");
        printf("6 - Sair.\n");
        scanf("%d", &opcao);

        switch (opcao) {
        case 1:
            do {
                printf("Digite o código do evento: ");
                scanf("%d", &codigo);
            } while (codigo <= 0);

            do {
                printf("Digite a data do evento (dia mes ano): ");
                scanf("%d %d %d", &dia, &mes, &ano);
            } while (dia <= 0 || mes <= 0 || mes > 12 || dia > 31);

            do {
                printf("Digite a hora do evento (hora minuto): ");
                scanf("%d %d", &hora, &minuto);
            } while (hora < 0 || hora > 23 || minuto < 0 || minuto > 59);

            do {
                printf("Digite a duração do evento em horas: ");
                scanf("%f", &duracao);
            } while (duracao <= 0);
            printf("Digite a descrição do evento: ");
            scanf(" %[^\n]", descricao);
            novo = newElemento(codigo, dia, mes, ano, hora, minuto, duracao, descricao);
            adicionarEvento(&head, novo);
            printf("\n");
            break;

        case 2:
            do {
                printf("Consulta por data ou por data e hora?\n");
                printf("1 - Data\n");
                printf("2 - Data e hora\n");
                scanf("%d", &consulta);
            } while (consulta != 1 && consulta != 2);

            if (consulta == 1) {
                do {
                    printf("Digite a data do evento (apenas dia): ");
                    scanf("%d", &dia);
                } while (dia <= 0 || dia > 31);

                consultarEvento(head, dia, -1, -1);
            } else if (consulta == 2) {
                do {
                    printf("Digite a data do evento (dia): ");
                    scanf("%d", &dia);
                } while (dia <= 0 || dia > 31);

                do {
                    printf("Digite a hora do evento (hora minuto): ");
                    scanf("%d %d", &hora, &minuto);
                } while (hora < 0 || hora > 23 || minuto < 0 || minuto > 59);

                consultarEvento(head, dia, hora, -1);
            }
            printf("\n");
            break;

        case 3:
            do {
                printf("Digite a data e a hora do evento a ser alterado (dia hora): ");
                scanf("%d %d", &dia, &hora);
            } while (dia <= 0 || dia > 31 || hora < 0 || hora > 23);
            printf("Digite a nova descrição do evento: ");
            scanf(" %[^\n]", descricao);
            do {
                printf("Digite a nova duração do evento em horas: ");
                scanf("%f", &duracao);
            } while (duracao <= 0);
            alterarEvento(head, duracao, descricao, dia, hora);
            printf("\n");
            break;

        case 4:
            do {
                printf("Digite o código do evento que deseja excluir: ");
                scanf("%d", &codigo);
            } while (codigo <= 0);
            removerEvento(&head, codigo);
            printf("\n");
            break;

        case 5:
            printList(head);
            printf("\n");
            break;

        case 6:
            freeFolks(head);
            printf("Encerrando\n");
            return 0;

        default:
            printf("Opção inválida\n");
        }
    }
}
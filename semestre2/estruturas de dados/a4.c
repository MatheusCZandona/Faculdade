#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Operacao {
    char operation;
    double operand1;
    double operand2;
    double result;
    struct Operacao *next;
} Operacao;

Operacao *newOperacao(char operation, double operand1, double operand2, double result) {
    Operacao *new_op = (Operacao *)malloc(sizeof(Operacao));
    new_op->operation = operation;
    new_op->operand1 = operand1;
    new_op->operand2 = operand2;
    new_op->result = result;
    new_op->next = NULL;
    return new_op;
}

Operacao *insertOperacao(Operacao *head, Operacao *new_op) {
    if (head == NULL) {
        return new_op;
    }

    Operacao *aux = head;
    while (aux->next != NULL) {
        aux = aux->next;
    }
    aux->next = new_op;
    return head;
}

void mostraHistorico(Operacao *head) {
    if (head == NULL) {
        printf("Histórico vazio.\n");
        return;
    }

    printf("Histórico de operações:\n");
    Operacao *aux = head;
    while (aux != NULL) {
        printf("%c %.2f %.2f = %.2f\n", aux->operation, aux->operand1, aux->operand2, aux->result);
        aux = aux->next;
    }
}

void freeHistorico(Operacao *head) {
    Operacao *aux;
    while (head != NULL) {
        aux = head->next;
        free(head);
        head = aux;
    }
}

int main() {
    Operacao *historico = NULL;  
    char operacao;
    double operand1, operand2, result;

    while (1) {
        printf("Digite a operação (+, -, *, /, @ para sair, h para histórico): ");
        scanf(" %c", &operacao);

        if (operacao == '@') {
            break;
        } else if (operacao == 'h') {
            mostraHistorico(historico);
            continue;
        }

        printf("Digite o primeiro operando: ");
        scanf("%lf", &operand1);

        printf("Digite o segundo operando: ");
        scanf("%lf", &operand2);

        switch (operacao) {
            case '+':
                result = operand1 + operand2;
                break;
            case '-':
                result = operand1 - operand2;
                break;
            case '*':
                result = operand1 * operand2;
                break;
            case '/':
                if (operand2 == 0) {
                    printf("Erro: Divisão por zero!\n");
                    continue;
                }
                result = operand1 / operand2;
                break;
            default:
                printf("Operação inválida.\n");
                continue;
        }

        printf("%.2f %c %.2f = %.2f\n", operand1, operacao, operand2, result);

        Operacao *new_op = newOperacao(operacao, operand1, operand2, result);
        historico = insertOperacao(historico, new_op);
    }

    freeHistorico(historico);

    return 0;
}

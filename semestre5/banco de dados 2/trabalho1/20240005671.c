#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct ttable {
    int idtable;      // table's id
    char ctname[20];  // conceptual table's name
    char ptname[20];  // physical table's name
};
typedef struct ttable MTable;

struct tatt {
    int idtable;      // table's id
    char atname[20];  // attribute's name
    char attype;      // S (string) I (integer) F (float) (C Char)
    char isKey;       // 1 is a primary key
    char atopt;       // mandatory (0) optional (1)
    int atlen;        // length
};
typedef struct tatt MAtt;

void printData(MAtt* adata, FILE* arq, int ncolunas, int idt, char* filen) {  // printa informacoes
    FILE* arqtables;
    char path[100] = "data/";
    strcat(path, filen); //configura o nome do arquivo
    arqtables = fopen(path, "rb");
    if (arqtables == NULL) {
        printf("Erro ao abrir arquivo\n");
        return;
    }

    MAtt* tabela = NULL;
    int n = 0;
    for (int i = 0; i < ncolunas; i++) {  // cria um novo array para as colunas desejadas
        if ((adata)[i].idtable == idt) {
            MAtt* temp = realloc(tabela, sizeof(MAtt) * (n + 1));
            if (temp == NULL) {  // por seguranca
                printf("Erro de alocacao\n");
                free(tabela);
                exit(1);
            }
            tabela = temp;
            tabela[n++] = (adata)[i];
        }
    }

    // printf("%d\n", n);
    // printf("idtable - atname - attype - isKey - atoptr - atlen\n");
    /*
    for (int i = 0; i < n; i++) {
        printf(" %d  -  %s  -  %c  -  %d  -  %d  -  %d\n",
               (tabela)[i].idtable,
               (tabela)[i].atname,
               (tabela)[i].attype,
               (tabela)[i].isKey,
               (tabela)[i].atopt,
               (tabela)[i].atlen);
    }
    */

    for (int i = 0; i < n; i++) {
        printf("%s  -  ", (tabela)[i].atname);
    }
    printf("\n");

    int v = 1;
    while (v) { //printa os dados das tabelas
        for (int i = 0; i < n; i++) {
            if (tabela[i].attype == 'I') {  // int
                int num;
                if (fread(&num, tabela[i].atlen, 1, arqtables) != 1) {
                    v = 0;
                    break;
                }
                if (tabela[i].isKey == 1)
                    printf("PK:%d ", num);
                else
                    printf("%d ", num);

                printf("%s - ", tabela[i].atopt == 0 ? "Mandatory" : "Optional");

            } else if (tabela[i].attype == 'S') {  // string
                char st[tabela[i].atlen + 1];
                if (fread(st, tabela[i].atlen, 1, arqtables) != 1) {
                    v = 0;
                    break;
                }
                st[tabela[i].atlen] = '\0';
                printf("%s ", st);
                printf("%s - ", tabela[i].atopt == 0 ? "Mandatory" : "Optional");

            } else if (tabela[i].attype == 'F') {  // float
                float f;
                if (fread(&f, tabela[i].atlen, 1, arqtables) != 1) {
                    v = 0;
                    break;
                }
                printf("%f ", f);
                printf("%s - ", tabela[i].atopt == 0 ? "Mandatory" : "Optional");

            } else if (tabela[i].attype == 'C') {  // char
                char c;
                if (fread(&c, tabela[i].atlen, 1, arqtables) != 1) {
                    v = 0;
                    break;
                }
                printf("%c ", c);
                printf("%s - ", tabela[i].atopt == 0 ? "Mandatory" : "Optional");
            }
        }

        if (v) printf("\n");
    }

    printf("\n");
    free(tabela);
    fclose(arqtables);
}

int readmdtable(MTable** tdata, FILE* arq) {
    fseek(arq, 0L, SEEK_SET);

    int n = 0;
    while (1) {
        MTable* temp = realloc(*tdata, sizeof(MTable) * (n + 1));
        if (temp == NULL) {  // por seguranca
            printf("Erro de alocacao\n");
            free(*tdata);
            exit(1);
        }

        *tdata = temp;
        size_t r = fread(&(*tdata)[n], sizeof(MTable), 1, arq);
        if (r != 1) break;

        n++;
    }

    printf("METADADOS DAS TABELAS\n");
    printf("ID  -   LOGICO  -   FISICO\n");
    for (int i = 0; i < n; i++) {
        printf("%d    %s    %s\n", (*tdata)[i].idtable,
               (*tdata)[i].ctname, (*tdata)[i].ptname);
    }
    printf("\n");

    return n;  // tamanho final do vetor
}

int readmtatt(MAtt** adata, FILE* arq) {
    int ncol = 0;
    while (1) {
        MAtt* temp = realloc(*adata, sizeof(MAtt) * (ncol + 1));
        if (temp == NULL) {  // por seguranca
            printf("Erro de alocacao\n");
            free(*adata);
            exit(1);
        }

        *adata = temp;
        size_t r = fread(&(*adata)[ncol], sizeof(MAtt), 1, arq);
        if (r != 1) break;
        ncol++;
    }
    // printf("%d\n", ncol);

    /*
    printf("idtable - atname - attype - isKey - atoptr - atlen\n");
    for (int i = 0; i < ncol; i++) {
        printf(" %d  -  %s  -  %c  -  %d  -  %d  -  %d\n",
               (*adata)[i].idtable,
               (*adata)[i].atname,
               (*adata)[i].attype,
               (*adata)[i].isKey,
               (*adata)[i].atopt,
               (*adata)[i].atlen);
    }
    */
    return ncol; //numero total de colunas
}

int main() {
    FILE* mtdtables;
    mtdtables = fopen("data/table.dic", "rb");  // metadados da tabela
    if (mtdtables == NULL) {
        printf("Erro ao abrir o arquivo\n");
        return 1;
    }
    FILE* mtdatts;
    mtdatts = fopen("data/att.dic", "rb");
    if (mtdatts == NULL) {
        printf("Erro ao abrir arquivo\n");
        return 1;
    }

    MTable* tdata = NULL;                           // vetor metadados das tabelas
    int ntabelas = readmdtable(&tdata, mtdtables);  // retorna tamanho do vetor
    //(numero de tabelas)

    MAtt* adata = NULL; // vetor metadados das colunas
    int ncolunas = readmtatt(&adata, mtdatts); // retorna numero de colunas total

    // escolha da tabela

    while (1) {
        char s[100];
        printf("Escolha o nome logico da tabela (digite ! para parar): ");
        fgets(s, sizeof(s), stdin);
        s[strcspn(s, "\n")] = '\0';
        if (!strcmp(s, "!"))break;
        printf("escolha: select * from %s\n", s);

        int chosenid;
        char filename[100];

        int v = 0;
        for (int i = 0; i < ntabelas; i++) {
            if (!strcmp(s, tdata[i].ctname)) { //se o nome escolhido for valido
                chosenid = tdata[i].idtable;
                strcpy(filename, tdata[i].ptname);
                v = 1;
                break;
            }
        }
        if (!v) printf("escolha invalida\n");
        // printf("%s, %d\n", filename, chosenid);
        else
            printData(adata, mtdatts, ncolunas, chosenid, filename);
    }

    free(tdata);
    free(adata);
    fclose(mtdtables);
    fclose(mtdatts);

    return 0;
}

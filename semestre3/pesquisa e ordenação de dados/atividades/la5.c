#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    FILE *arq;
    arq = fopen("/home/matheus-zandona/estudos/codigos/c/arquivostxt/coringa.txt", "r"); // caminho da pasta e modo de abertura
    //FILE *arq2;
    //arq2 = fopen("C:\\arquivostxt\\batata.txt", "w"); // caminho da pasta e modo de abertura
    if(arq == NULL){
        printf("Erro ao abrir o arquivo\n");
        return 1;
    }

    char trg;
    scanf("%c", &trg);
    int cont = 0;

    while(!feof(arq)){
        char c = fgetc(arq);
        if(c == trg) cont++;
    }
    printf("%d\n", cont);
    
    fclose(arq);
    
    return 0;
}
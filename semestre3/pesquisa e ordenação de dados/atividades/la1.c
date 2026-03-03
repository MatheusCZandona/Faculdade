#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    FILE *arq;
    char c;
    arq = fopen("/home/matheus-zandona/estudos/codigos/c/arquivostxt/palhaco.txt", "r"); // caminho da pasta e modo de abertura
    if(arq == NULL){
        printf("Erro ao abrir o arquivo\n");
        return 1;
    }
    int cont = 0;
    int v = 0;
    while((c = fgetc(arq)) != EOF){
        if((c == ' ' || c == '\n') && !v){
            cont++;
            v = 1;
        } else if((c != ' ' && c != '\n') && v){
            v = 0;
        }
    }
    
    printf("Numero de palavras: %d\n", cont);
    fclose(arq);
    
    return 0;
}
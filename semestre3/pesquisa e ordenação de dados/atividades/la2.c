#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    FILE *arq;
    arq = fopen("/home/matheus-zandona/estudos/codigos/c/arquivostxt/palhaco.txt", "r"); // caminho da pasta e modo de abertura
    FILE *arq2;
    arq2 = fopen("/home/matheus-zandona/estudos/codigos/c/arquivostxt/coringa.txt", "w"); // caminho da pasta e modo de abertura
    if(arq == NULL){
        printf("Erro ao abrir o arquivo\n");
        return 1;
    }


    char texto[100]; // tentei fazer responsivo o tamanho da string e nao deu certo
    fgets(texto, 100, arq);
    
    for(int i = 0; i < strlen(texto); i++){
        fputc(texto[i], arq2);
    }

    //char s;
    /*while((s = fgetc(arq2)) != EOF){
        if(s == ' '){ // o fgetc não lê espaços
            printf(" ");
            continue;
        }
        printf("%c", s);
    }*/
    
    fclose(arq);
    fclose(arq2);
    
    return 0;
}
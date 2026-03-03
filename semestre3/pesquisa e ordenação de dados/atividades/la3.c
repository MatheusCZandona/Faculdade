#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    FILE *arq;
    arq = fopen("/home/matheus-zandona/estudos/codigos/c/arquivostxt/coringa.txt", "a"); // caminho da pasta e modo de abertura
    //FILE *arq2;
    //arq2 = fopen("C:\\arquivostxt\\batata.txt", "w"); // caminho da pasta e modo de abertura
    if(arq == NULL){
        printf("Erro ao abrir o arquivo\n");
        return 1;
    }

    char texto[100];
    printf("Digite o texto que deseja inserir no arquivo aberto (max 100 caracteres): ");
    scanf("%100[^\n]", texto);

    
    fputs(texto, arq);
    

    //char s;
    /*while((s = fgetc(arq2)) != EOF){
        if(s == ' '){ // o fgetc não lê espaços
            printf(" ");
            continue;
        }
        printf("%c", s);
    }*/
    
    fclose(arq);
    
    return 0;
}
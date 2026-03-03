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

    char trg[30];
    scanf("%s", trg);
    char c;
    while(!feof(arq)){
        char palavra[200] = " ";
        int j = 0;
        int v = 1;
        
        do{
            c = fgetc(arq);
            palavra[j] = c;
            j++;
        } while ((c != '\n') && (c != EOF));
        palavra[j-1] = ' ';
        for(int i = 0; i < strlen(trg); i++){
            if(trg[i] != palavra[i]){
                v = 0;
                break;
            }
        }
        if(v){
            printf("%s\n", palavra);
        }

    }
    
    fclose(arq);
    
    return 0;
}
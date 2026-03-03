#include <stdio.h>
#include <stdlib.h>
#include <string.h>


//codigo merge para o mergesort
void merge(int arr[], int l, int m, int r) {
    int n1 = m - l + 1;
    int n2 = r - m;
    int *L = malloc(n1 * sizeof(int)), *R = malloc(n2 * sizeof(int));

    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];
    int i = 0, j = 0, k = l;
    while (i < n1 && j < n2) arr[k++] = (L[i] <= R[j]) ? L[i++] : R[j++];
    while (i < n1) arr[k++] = L[i++];
    while (j < n2) arr[k++] = R[j++];
    free(L); free(R);
}

//codigo recursivo merge sort
void merge_sort(int arr[], int left, int right) {
    if (left < right) {
        int mid = left + (right - left) / 2;
        merge_sort(arr, left, mid);
        merge_sort(arr, mid + 1, right);
        merge(arr, left, mid, right);
    }
}

//criacao dinamica dos arquivos de entrada e saida dos dados da ordenacao externa durante a execucao
//do programa para nao precisar criar eles antes
//o codigo nao criara m arquivos de entrada se m*n > dados.size() --> 1 <= n <= m
void build_file_name(char *dest, const char *base, const char *prefix, int indice) {
    strcpy(dest, base);
    strcat(dest, prefix);
    char sufix[16];
    sprintf(sufix, "%d.txt", indice);
    strcat(dest, sufix);
}


void external_sort(const char *input_file, int M, const char *output_file, const char *base_path) {
    // apaga todos os arquivos temporarios de execucoes anteriores
    for (int i = 0; i < 1000; i++) {
        char temp_file[256];
        build_file_name(temp_file, base_path, "temp_in_", i);
        remove(temp_file);
        build_file_name(temp_file, base_path, "temp_out_", i);
        remove(temp_file);
    }

    FILE *fp = fopen(input_file, "r"); //fp abre o dados.txt
    if (!fp) {
        printf("Erro ao abrir o arquivo de entrada\n");
        return;
    }

    FILE *final_out = fopen(output_file, "a+"); //abre o dados_ordenados.txt
    if (final_out == NULL) {
        perror("Erro ao abrir arquivo de saída final");
        exit(1);
    }

    FILE *in_files[M]; //cria m arquivos de entrada (0 to m-1)
    char nome[256]; //buffer do caminho completo de um arquivo
    for (int i = 0; i < M; i++) {
        build_file_name(nome, base_path, "temp_in_", i);
        in_files[i] = fopen(nome, "w");
    }

    int *buffer = malloc(M * sizeof(int)); //buffer de tamamho m para armazenar os dados
    int count = 0, block = 0, num;
    //count: numero de elementos no buffer
    //block: numero de blocos que foram criados
    //num: variavel auxiliar para ler os numeros inteiros

    while (fscanf(fp, "%d;", &num) != EOF) {
        buffer[count] = num;
        count++;
        if (count == M) { //quando pega o os m numeros vai ordenar e separar nos arquivos de entrada
            merge_sort(buffer, 0, count - 1);
            int idx = block % M; //para reutilizar sempre os m arquivos de entrada
            for (int i = 0; i < M; i++) fprintf(in_files[idx], "%d;", buffer[i]);
            fprintf(in_files[idx], " ");
            count = 0;
            block++;
        }
    }

    if (count > 0) { //caso ainda tenha numeros no buffer
        merge_sort(buffer, 0, count - 1);
        int idx = block % M;
        for (int i = 0; i < count; i++) fprintf(in_files[idx], "%d;", buffer[i]);
        fprintf(in_files[idx], " ");
        block++;
    }

    for (int i = 0; i < M; i++) //fecha os arquivos de entrada
        fclose(in_files[i]);
    fclose(fp);
    free(buffer);


    // Reabrir os arquivos de entrada para leitura
    for (int i = 0; i < M; i++) {
        build_file_name(nome, base_path, "temp_in_", i);
        in_files[i] = fopen(nome, "r");
        if (!in_files[i]) {
            perror("Erro ao abrir arquivo temp_in");
            exit(1);
        }
    }

    // Abrir arquivos de saída temporários
    FILE *out_files[M];
    for (int i = 0; i < M; i++) {
        build_file_name(nome, base_path, "temp_out_", i);
        out_files[i] = fopen(nome, "w");
        if (!out_files[i]) {
            perror("Erro ao criar arquivo de saída");
            exit(1);
        }
    }

    char c;
    int current_num = 0;
    int has_num = 0;
    int cont = 0;
    int file_index = 0;
    
    // processar cada arquivo de entrada
    // aqui vai acumulando os dados de cada arquivo de entrada
    // isso significa q o ultimo arquivo de saida vai ter os dados ordenados de todos os arquivos de entrada
    for (file_index = 0; file_index < M; file_index++) {
        int numbers[10000];
        cont = 0;
        has_num = 0;
        current_num = 0;

        while ((c = fgetc(in_files[file_index])) != EOF) {
            if (c >= '0' && c <= '9') {
                // construir o número dígito por dígito
                current_num = current_num * 10 + (c - '0');
                has_num = 1;
            } else if (c == ';' || c == ' ') {
                // armazena o numero
                if (has_num) {
                    numbers[count] = current_num;
                    count++;
                    current_num = 0;//deleta o numero atual
                    has_num = 0;
                }
                
                // Se for espaço processa o bloco atual
                if (c == ' ') {
                    if (cont > 0) {
                        // ordenar os números coletados
                        merge_sort(numbers, 0, cont - 1);
                        
                        // Escrever no arquivo de saída
                        for (int i = 0; i < cont; i++) {
                            fprintf(out_files[file_index], "%d;", numbers[i]);
                            
                        }
                        fprintf(out_files[file_index], " ");
                        cont = 0;
                    }
                }
            }
        }

        // Processa os números restantes no buffer
        if (has_num) {
            numbers[count++] = current_num;
        }
        if (count > 0) {
            merge_sort(numbers, 0, count - 1);
            for (int i = 0; i < count; i++) {
                fprintf(out_files[file_index], "%d;", numbers[i]);
            }
            fprintf(out_files[file_index], " ");
        }

        fclose(in_files[file_index]);
    }

    for (int i = 0; i < M; i++) {
        fclose(out_files[i]);
    }
    
    // Copiar o conteúdo do out_file[m-1] para o arquivo de saida final
    char s;
    FILE *temp_out_file[M];
    for (int i = 0; i < M; i++) {
        build_file_name(nome, base_path, "temp_out_", i);
        temp_out_file[i] = fopen(nome, "r");
        if (temp_out_file == NULL) {
            perror("Erro ao abrir arquivo temporário de saída");
            exit(1);
        }
        if(i == M-1){
            while ((s = fgetc(temp_out_file[i])) != EOF) {
                if(s >= '0' && s <= '9') fputc(s, final_out);
                else if(s == ';') fputc(';', final_out);
            }
        }
        fclose(temp_out_file[i]);
    }
    fclose(final_out);
}


int main() {
    //ATENCAO ATENCAO ATENCAO ATENCAO ATENCAO ATENCAO ATENCAO
    //IMPORTANTE QUE INSIRA CORRETAMENTE O CAMINHO DA PASTA QUE TEM OS ARQUIVOS DA EXECUCAO DO CODIGO
    const char *base_path = "/home/matheus-zandona/estudos/codigos/c/arquivostxt/";

    char input_filename[256], output_filename[256];
    strcpy(input_filename, base_path);
    strcat(input_filename, "dados.txt"); //tratar como string o caminho do arquivo de entrada e saida

    strcpy(output_filename, base_path);
    strcat(output_filename, "dados_ordenados.txt");

    FILE *arq = fopen(input_filename, "r");
    if (arq == NULL) { //verificacao se o arquivo existe
        printf("Erro ao abrir o arquivo '%s'\n", input_filename);
        return 1;
    }
    fclose(arq);

    int m;
    printf("Número de dados que serão carregados em memória (tamanho do bloco): ");
    scanf("%d", &m); //ler o tamanho do bloco
    printf("\n");

    //chama a funcao de principal do programa
    external_sort(input_filename, m, output_filename, base_path);

    printf("Arquivo de saída com os dados ordenados: '%s'\n", output_filename);

    FILE *result = fopen(output_filename, "a+");
    if (result != NULL) {
        fprintf(result, "\nAutor: Matheus Zandona\n");
        fclose(result);
    } else {
        printf("Erro ao abrir o arquivo de saída para leitura\n");
    }

    return 0;
}

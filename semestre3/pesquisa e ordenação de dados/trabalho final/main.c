#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define DEGREE 4
#define MAX_KEYS (DEGREE - 1)
#define MIN_KEYS (DEGREE / 2)
#define MAXN 100000

typedef struct Node {
    int* keys; //array das chaves
    int num_keys; // numero de chaves
    struct Node** children; //array dos filhos
    bool is_leaf; // e folha
    struct Node* next; //lista encadeada das folhas
} Node;

typedef struct BPTree {
    Node* root;
} BPTree;

Node* create_node(bool is_leaf) { //alocar memoria e criar os nodes
    Node* node = (Node*)malloc(sizeof(Node));
    node->keys = (int*)malloc(sizeof(int) * MAX_KEYS);
    node->children = (Node**)malloc(sizeof(Node*) * DEGREE);
    node->num_keys = 0;
    node->is_leaf = is_leaf;
    node->next = NULL;
    return node;
}

BPTree* create_btree() { //alocar memoria para a arvore
    BPTree* tree = (BPTree*)malloc(sizeof(BPTree));
    tree->root = create_node(true);
    return tree;
}

void insert_in_leaf(Node* leaf, int key) { //folha com menos de degree-1 elementos
    int i = leaf->num_keys - 1;
    while (i >= 0 && leaf->keys[i] > key) { //insercao ordenada
        leaf->keys[i + 1] = leaf->keys[i]; //passa os elementos pra frente
        i--;
    }
    leaf->keys[i + 1] = key;//adiciona na posicao q ficou em branco
    leaf->num_keys++;
} //complexidade O(DEGREE)

void split_leaf(Node* leaf, int key, Node** new_leaf, int* new_key) {
    int temp_keys[DEGREE];
    for (int i = 0; i < MAX_KEYS; i++)
        temp_keys[i] = leaf->keys[i];  //insere as chaves em um array temporario

    int i = MAX_KEYS - 1;
    while (i >= 0 && temp_keys[i] > key) {
        temp_keys[i + 1] = temp_keys[i]; 
        i--;
    }
    temp_keys[i + 1] = key; //insere na posicao correta

    leaf->num_keys = (DEGREE + 1) / 2;
    *new_leaf = create_node(true); //cria um novo node folha
    (*new_leaf)->num_keys = DEGREE - leaf->num_keys;
    for (int j = 0; j < leaf->num_keys; j++)
        leaf->keys[j] = temp_keys[j]; //copia as chaves para o node original
    for (int j = 0; j < (*new_leaf)->num_keys; j++)
        (*new_leaf)->keys[j] = temp_keys[leaf->num_keys + j]; //copia as chaves para o novo node

    (*new_leaf)->next = leaf->next;// atualiza o ponteiro da nova folha
    leaf->next = *new_leaf;//atualiza o ponteiro da folha original
    *new_key = (*new_leaf)->keys[0];// chave que sobe para o pai
    
    
} //complexidade O(DEGREE)

void insert_in_internal(Node* parent, int key, Node* right) {
    int i = parent->num_keys - 1;
    while (i >= 0 && parent->keys[i] > key) { //para inserir ordenadamente
        parent->keys[i + 1] = parent->keys[i];
        parent->children[i + 2] = parent->children[i + 1];
        i--;
    }
    parent->keys[i + 1] = key; //adiciona o elemento
    parent->children[i + 2] = right; //adiciona o filho
    parent->num_keys++;
} // complexidade O(DEGREE)

void split_internal(Node* parent, int key, Node* right, Node** new_child, int* mid_key) {
    int temp_keys[DEGREE];//array temporario para as chaves
    Node* temp_children[DEGREE + 1]; //array temporario para os filhos

    for (int i = 0; i < MAX_KEYS; i++)
        temp_keys[i] = parent->keys[i];
    for (int i = 0; i < DEGREE; i++)
        temp_children[i] = parent->children[i];

    int i = MAX_KEYS - 1;
    while (i >= 0 && temp_keys[i] > key) { //para inserir ordenadamente
        temp_keys[i + 1] = temp_keys[i];
        temp_children[i + 2] = temp_children[i + 1];
        i--;
    }
    temp_keys[i + 1] = key;
    temp_children[i + 2] = right;

    int mid = DEGREE / 2;
    *mid_key = temp_keys[mid]; //chave do meio que sobe para o pai

    parent->num_keys = mid; //atualiza o numero de chaves do pai
    *new_child = create_node(false);
    (*new_child)->num_keys = MAX_KEYS - mid; //cria um novo node interno
    //daqui copia as chaves e os filhos para o pai e o novo filho
    for (int j = 0; j < parent->num_keys; j++)
        parent->keys[j] = temp_keys[j];
    for (int j = 0; j <= parent->num_keys; j++)
        parent->children[j] = temp_children[j];
    for (int j = 0; j < (*new_child)->num_keys; j++)
        (*new_child)->keys[j] = temp_keys[mid + 1 + j];
    for (int j = 0; j <= (*new_child)->num_keys; j++)
        (*new_child)->children[j] = temp_children[mid + 1 + j];
} // complexidade O(DEGREE)


void insert_recursive(Node** root_ref, Node* node, int key, Node** new_child, int* new_key) {
    if (node->is_leaf) {
        if (node->num_keys < MAX_KEYS) {
            insert_in_leaf(node, key); //para folhas com menos de DEGREE-1 chaves
            *new_child = NULL;
        } else {
            split_leaf(node, key, new_child, new_key); //para folhas com DEGREE-1 elementos
        }
    } else {
        int i = 0;
        while (i < node->num_keys && key > node->keys[i]) //para encontrar o filho correto
            i++;
        Node* child = node->children[i];
        Node* new_subchild = NULL;
        int subkey;
        insert_recursive(root_ref, child, key, &new_subchild, &subkey);//chamar a funcao para o filho correto
        if (new_subchild) { //se o filho retornou um novo filho, deve inserir uma chave no pai
            if (node->num_keys < MAX_KEYS) { //se o node tiver espaco
                insert_in_internal(node, subkey, new_subchild);
                *new_child = NULL;
            } else {
                split_internal(node, subkey, new_subchild, new_child, new_key); //se o no esta cheio
            }
        } else {
            *new_child = NULL; // nao houve split
        }
    }
} //complexidade O(log n)

void insert(BPTree* tree, int key) { // funcao base para insercao
    Node* new_child = NULL;
    int new_key;
    insert_recursive(&tree->root, tree->root, key, &new_child, &new_key);
    if (new_child) { //cria uma nova raiz caso a raiz tenha sido dividida
        Node* new_root = create_node(false);
        new_root->keys[0] = new_key;
        new_root->children[0] = tree->root;
        new_root->children[1] = new_child;
        new_root->num_keys = 1;
        tree->root = new_root;
    }
}

void print_inorder(Node* node, int depth){ //printar a arvore de acordo com a atividade
    if(node == NULL) return;
    if(node->is_leaf){ //caso folha, apenas printar os elementos
        printf("|");
        for(int i = 0; i < depth; i++) printf("-");
        for(int i = 0;i < node->num_keys; i++){
            printf("%d ", node->keys[i]);
        }
        printf("\n");
    } else { //unico caso recursivo quando o node nao e folha
        for(int i = 0, a = 0; i <= node->num_keys; i++){
            print_inorder(node->children[i], depth+1);
            if(a < node->num_keys){//para printar 1 por 1 do no pai
                printf("|");
                for(int i = 0; i < depth; i++) printf("-");
                printf("%d\n", node->keys[a++]);
            }
        }
    }
}

void print_leaves(BPTree* tree) { //printar apenas os valores de cada folha da arvore
    Node* leaf = tree->root;
    while (!leaf->is_leaf)
        leaf = leaf->children[0];
    printf("|| ");
    while (leaf) {
        for (int i = 0; i < leaf->num_keys; i++)
            printf("%d ", leaf->keys[i]);
        printf("-> ");
        leaf = leaf->next;
    }
    printf("||\n");
}

void free_tree(Node* node) { //liberar a memoria da arvore
    if (node == NULL)
        return;
    if (!node->is_leaf) {
        for (int i = 0; i <= node->num_keys; i++)
            free_tree(node->children[i]);
    }
    free(node->keys);
    free(node->children);
    free(node);
}

int main() {
    BPTree* bptree = create_btree();

    FILE* file = fopen("/home/matheus-zandona/estudos/codigos/c/trabalhofinal/dados.txt", "r");
    if (file == NULL) {
        printf("Error opening file.\n");
        free_tree(bptree->root);
        free(bptree);
        return 1;
    }

    int value = 0, pos = 0;
    char c;
    int numbers[MAXN];

    while ((c = fgetc(file)) != EOF) {
        if (c >= '0' && c <= '9') {
            value = value * 10 + (c - '0');
        } else if (c == ';') {
            numbers[pos++] = value;
            value = 0;
        }
    }
    numbers[pos++] = value;
    fclose(file);

    for (int i = 0; i < pos; i++) {
        insert(bptree, numbers[i]);
    }

    printf("\nFolhas\n");
    print_leaves(bptree);

    printf("\nEstrutura:\n");
    print_inorder(bptree->root, 0);

    free_tree(bptree->root);
    free(bptree);
    return 0;
}

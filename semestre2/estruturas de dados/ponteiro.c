#include<stdio.h>
#include<stdlib.h>
#include<string.h> 
//strcpy, strconcat, strlen, strcmp


 struct _people{
    int id;
    char name[40];
    int age;
    struct _people *next;
};
typedef struct _people People;



People *insertElement (People *head, People *new, int end){
    People *last;

    if (head == NULL)
        return new;
    if (!end){
        new->next = head;
        head = new;
    } else{ 
        last = head;
        while(last->next != NULL) last = last->next;
        last->next = new;

        for (last = head; last->next != NULL; last = last->next);
    }
       

    return head;
}

People *newElement(char *name, int age){
    People *aux;

    aux = malloc (sizeof(People));
    //aux->name = name;
   // strcpy(aux->name, name);
    snprintf(aux->name, sizeof(aux->name),"%s", name);
    aux->age = age;
    aux->next = NULL;

    return aux;    
}

void printList(People *head){
    People *aux;

    for (aux = head; aux != NULL; aux = aux->next){
        printf("na: %s -> np: %s\n", aux->name, aux->next != NULL ? aux->next->name: "NULL");

    }
}

void freeFolks(People *head){
    People *aux;

   aux = head; 
   while (aux != NULL){
        aux = aux->next;
        free(head);
        head = aux;
   } 
}

int main(){

    People *head = NULL, *aux;


   head = insertElement(head, newElement("teste", 12),1);
   head = insertElement(head,newElement("teste2", 12),1);
   head = insertElement(head,newElement("teste3", 13),1);
   head = insertElement(head,newElement("teste4", 12),1);
   head = insertElement(head,newElement("teste5", 18),1);
   head = insertElement(head,newElement("teste6", 21),0);

   printList(head);

    freeFolks(head);

    return 0;
}
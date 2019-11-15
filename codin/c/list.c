#include<stdio.h>
#include<stdlib.h>
#include<string.h>

typedef struct node pnode;
typedef struct node{
    char data[4];
    pnode *next;
};

int main(){
    pnode *ptr = NULL;
    pnode *first = NULL;
    pnode *second = NULL;

    ptr = (pnode*)malloc(sizeof(struct node));
    first = (pnode*)malloc(sizeof(struct node));
    second = (pnode*)malloc(sizeof(struct node));

    strcpy(first->data, "bat");
    first->next = second;
    ptr = first;
    strcpy(second->data, "cat");
    second->next = NULL;

   /* pnode *tmp;

    if (pnode* == NULL)
        printf("List is empty");

    else
    tmp=pnode*;

    while(tmp != NULL)
        printf("Data = %s \n", tmp->data);
        tmp = tmp->next;*/




}

#include<stdio.h>
#include<stdlib.h>

#define MAX_TERMS 101

typedef struct{
        int col;
        int row;
        int value;
    }term;

term a [MAX_TERMS];

int main(){

void transpose(term a[], term b[]){
    int n, i, j, currentb;
    n = a[0].value;
    b[0].row = a[0].col;
    b[0].col = a[0].row;
    b[0].value = n;

    if (n > 0){
        currentb = 1;
        for(i = 0; i < a[0].col; i++){
            b[i].row = a[i].col;
            b[i].col = a[i].row;
        }
    }

}

}

#include<stdio.h>
#include<stdlib.h>

#define MAX_D 20

 typedef struct{
        int degree;
        int coef[MAX_D];

    }polynomial;

int main(){


    polynomial x,y,z;

    x.coef [MAX_D] = 2,3,6,3,6,8;
    y.coef [MAX_D] = 4,5,6,2,7,8;
    x.degree=5;
    y.degree=5;



        int i;
        for(i = 0; i < MAX_D; i++){
            z.coef[i] = x.coef[i] + y.coef[i];
            printf("%d \n", z.coef[i]);



        }

    }





#include<stdio.h>
#include<stdlib.h>


int main(){

int i, max = 0;
int arr[10]={4,34,5,3,2,556,67};

for(i=0; i<10; i++){
    if (max < arr[i])
        max = arr[i];
    }
    printf("%d", max);
return 0;
}

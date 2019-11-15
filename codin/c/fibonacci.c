#include <stdio.h>
#include <stdlib.h>

int main (){
    int i, n,t1=0,t2=1,nextT;
    printf("Enter number of terms:");
    scanf("%d",&n);

    for(i=1; i<=n; i++){
        printf("%d \n", t2);
        nextT=t1+t2;
        t1=t2;
        t2=nextT;


        }
return 0;



}

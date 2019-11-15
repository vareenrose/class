#include <stdio.h>
#include <stdlib.h>

int main()
{
    float t;
    int  a[10];
    float s=0;
    int i;
    for(i=0; i<10; i++){
        a[i]=i+1;
        printf("Number: %d \t",a[i]);
        s+=a[i];
        t=s/(i+2);
        printf("%f \n",t);
    }

}

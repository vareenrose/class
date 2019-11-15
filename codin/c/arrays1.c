#include <stdio.h>
#include <stdlib.h>

int main()
{

	int n=0 ,arr[5] = {1,2,3,4,5};
	int *pa;
	int arr1[] = {5,6,7,8,9};

	printf("Indices: Values: Memory locations:\n");
	for (int i = 0; i < 5; ++i)
	{
		printf("%d \t %d  \t %p \n", i, arr[i], &arr[i]);
	}

	printf("Indices: Values: Memory locations:\n");

	pa =arr1;
    while(n<5)
    {
        printf("%d \t %d \t %p \n",n, *pa, pa);
        n++;
        pa++;
	}
	return 0;
}


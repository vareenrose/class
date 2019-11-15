#include <stdio.h>
#include <stdlib.h>
#define n 100

int stack[n], item, top;
void push(int top, int item){
    if (top >= n-1)
        printf("Stack is full.\n");

    else
        top++;
        stack[top]=item;
}

int pop(int top){
    if (top <= -1)
        printf("Stack is empty.");

    else
        stack[top]=item;
        top--;
        printf("%d", item);
        return item;
}
int main(){
    int stack[n];
    int top = -1;
    push(-1,4);

}

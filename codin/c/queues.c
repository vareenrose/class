#include <stdio.h>
#include <stdlib.h>
#define n 100
int queue[n], item;
void enqueue(int rear, int item){
    if (rear == n-1)
        printf("Queue is full.");

    else
        queue[rear]=item;
        rear++;
}

int dequeue(int front, int rear){
    if (front == rear)
        printf("Queue is empty.");

    else
        queue[front]=item;
        front++;
        return item;
    }


int main(){

int queue[n];
int rear, front;
front = 0;
rear = 0;


}

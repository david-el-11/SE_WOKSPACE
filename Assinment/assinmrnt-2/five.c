#include<stdio.h>

int main(){
int i=1;
while(i<=10){ printf("%d ", i++); }

Reverse Number

int n, rev=0;
while(n>0){
 rev = rev*10 + n%10;
 n/=10;
}
}
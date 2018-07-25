#include <stdio.h>
int to = 100;
int main(int argc, char* argv[]) {

    int i;
    int m = to;
    int sum = 0;

    for (i=1; i<=m; i++) {
        sum +=i; 
    }
    printf("Sum 1 to %d is %d\n", to, sum);

}

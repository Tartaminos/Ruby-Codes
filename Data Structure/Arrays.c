#include <stdio.h>
#include <stdlib.h>

int print_array(array) {
    int run = 1, *cont = 0, aux = 0;

    // to show array elements we need to iterate
    while (run == 1) {
        if (array[&aux] != NULL){
            printf("%d ", array[&aux]);
            aux += 1;
        } else {
            run = 0;
        }
    }
}

void add_element(int array, int element) {
    int *size = 0;
    int run = 1;

    // use realloc to create a dynamic size but first we need to discover how many elements we have
    while (run == 1) {
        if (array[&size] != NULL){
            size += 1;
        } else {
            run = 0;
        }
    }

    array = (int *)realloc(array, *size += 1 * sizeof(int));

    array[size] = element;

    return print_array(array);


}

int main() {
    int array[5] = {1, 2, 3, 4, 5};

    //print_array(array);
    add_element(array, 42);

    return 0;
}
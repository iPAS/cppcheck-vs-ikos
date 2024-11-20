#include <stdio.h>
#include <stdlib.h>
#include <limits.h>


int main() {
    // 1. Buffer Overflows
    int arr[5];
    arr[10] = 42;  // Out-of-bounds write

    // 2. Division by Zero
    int a = 5, b = 0;
    printf("Result: %d\n", a / b); // Intentional division by zero

    // 3. Null Pointer Dereferences
    int *ptr = NULL;
    *ptr = 5;  // Null pointer dereference

    // 4. Memory Leaks
    int *data = malloc(sizeof(int) * 100);  // Memory Leaks

    // 5. Integer Overflows/Underflows
    int imax = INT_MAX;
    imax = imax + 1;  // Integer overflow

    // 6. Use of Uninitialized Variables
    int x;
    int y = x + 1;  // Use of uninitialized variable

    return 0;
}

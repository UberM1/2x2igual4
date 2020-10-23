#include <stdio.h>

int Determinador_roor (int, int, int, int) __attribute__((cdecl));

int main(){
    int a, b, c, d;
    printf("ingrese 4 numeros para generar la matriz:\n con el formato %%i %%i %%i %%i \n  ");
    scanf("%i %i %i %i",&a,&b,&c,&d);
    a = Determinador_roor(a, b, c, d);
    printf("el determinante de la matriz es: %i \n", a);
    return 0;
}

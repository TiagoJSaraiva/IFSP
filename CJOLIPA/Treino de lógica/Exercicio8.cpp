//Calculadora fat

#include <iostream>

int fat(int num){
    int i = 1;
    int resultado = num;
    while((num-i) != 1){
        resultado *= (num-i);
        i++;
    }
    return resultado;
}

int main(void) {
    int num;

    std::cout << "Insire um numero inteiro para calcular seu fatoreal: "; std::cin >> num;
    std::cout << num << "! e igual a: " << fat(num);

    return 0;
}

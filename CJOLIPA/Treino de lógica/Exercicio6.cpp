
#include <iostream>

int main() {
    int number;
    int N[11];

    leitura:
    std::cout << "Insira um valor inteiro positivo ";
    std::cin >> number;
    if(number <= 0) goto leitura;

    int numberCopia = number;

    for(int i = 0; i < sizeof(N)/sizeof(N[0]); i++) {
        N[i] = number;
        number *= 2;
    }
    std::cout << numberCopia << " multiplicado por 2, 10 vezes" << std::endl;
    for(int i = 0; i < sizeof(N)/sizeof(N[0]); i++) {
        std::cout << "N[" << i << "] = " << N[i] << std::endl;
    }

    return 0;
}

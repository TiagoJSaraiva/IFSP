#include <iostream>

int main(void) {
    int N;

    do {
        std::cout << "Digite o numero de minutos interessantes (1-90): ";
        std::cin >> N;
        if (std::cin.fail()) {
            std::cout << "Entrada invalida. Por favor, digite um numero.\n";
            std::cin.clear();
            std::cin.ignore(1000, '\n');
        } else if (N <= 0 || N > 90) {
            std::cout << "N deve estar entre 1 e 90. Tente novamente.\n";
        }
    } while(N <= 0 || N > 90 || std::cin.fail());

    int* pontos_interesse = new int[N + 2];
    pontos_interesse[0] = 0;

    for(int i = 1; i <= N; i++) {
        do {
            std::cout << "Digite o minuto interessante t" << i << " (1-90";
            if (i > 1) {
                std::cout << ", maior ou igual a " << pontos_interesse[i-1];
            }
            std::cout << "): ";
            std::cin >> pontos_interesse[i];

            if (std::cin.fail()) {
                std::cout << "Entrada invalida. Por favor, digite um numero.\n";
                std::cin.clear();
                std::cin.ignore(1000, '\n');
            } else if (pontos_interesse[i] <= 0 || pontos_interesse[i] > 90 || pontos_interesse[i] < pontos_interesse[i-1]) {
                std::cout << "Minuto invalido. Deve ser entre 1-90 e em ordem crescente.\n";
            }
        } while(std::cin.fail() || pontos_interesse[i] <= 0 || pontos_interesse[i] > 90 || pontos_interesse[i] < pontos_interesse[i-1]);
    }
    pontos_interesse[N + 1] = 90;

    int minutos_assistidos = 0;
    for(int i = 0; i <= N; ++i) {
        int inicio_intervalo = pontos_interesse[i];
        int fim_intervalo = pontos_interesse[i+1];

        if (fim_intervalo - inicio_intervalo > 15) {
            minutos_assistidos = inicio_intervalo + 15;
            std::cout << minutos_assistidos << "\n";
            delete[] pontos_interesse;
            pontos_interesse = nullptr;
            return 0;
        }
    }

    std::cout << 90 << "\n";

    delete[] pontos_interesse;
    pontos_interesse = nullptr;

    return 0;
}

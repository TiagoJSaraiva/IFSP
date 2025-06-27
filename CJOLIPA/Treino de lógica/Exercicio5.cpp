#include <iostream>

int contador(int* valorTotal, int valorMoeda) {
    int quantidade = 0;
    while(*valorTotal - valorMoeda >= 0) {
        *valorTotal -= valorMoeda;
         quantidade++;
    }
    return quantidade;
}

int main() {
    double valorEntrada;

    std::cout << "Insira uma quantia de dinheiro" << std::endl;
    std::cin >> valorEntrada;

    int valor = static_cast<int>(valorEntrada * 100 + 0.5);

    int* valorp = &valor;

    int nota100 = contador(valorp, 10000);
    int nota50 = contador(valorp, 5000);
    int nota20 = contador(valorp, 2000);
    int nota10 = contador(valorp, 1000);
    int nota5 = contador(valorp, 500);
    int nota2 = contador(valorp, 200);
    int moeda1 = contador(valorp, 100);
    int moeda50c = contador(valorp, 50);
    int moeda25c = contador(valorp, 25);
    int moeda10c = contador(valorp, 10);
    int moeda5c = contador(valorp, 5);
    int moeda1c = contador(valorp, 1);

    std::cout << "NOTAS:" << std::endl;
    std::cout << nota100 << " nota(s) de R$ 100.00" << std::endl;
    std::cout << nota50 << " nota(s) de R$ 50.00" << std::endl;
    std::cout << nota20 << " nota(s) de R$ 20.00" << std::endl;
    std::cout << nota10 << " nota(s) de R$ 10.00" << std::endl;
    std::cout << nota5 << " nota(s) de R$ 5.00" << std::endl;
    std::cout << nota2 << " nota(s) de R$ 2.00" << std::endl;
    std::cout << "MOEDAS:" << std::endl;
    std::cout << moeda1 << " moeda(s) de R$ 1.00" << std::endl;
    std::cout << moeda50c << " moeda(s) de R$ 0.50" << std::endl;
    std::cout << moeda25c << " moeda(s) de R$ 0.25" << std::endl;
    std::cout << moeda10c << " moeda(s) de R$ 0.10" << std::endl;
    std::cout << moeda5c << " moeda(s) de R$ 0.05" << std::endl;
    std::cout << moeda1c << " moeda(s) de R$ 0.01" << std::endl;

    return 0;
}

#include <iostream>

 using namespace std;

 int main(void) {

    int quadradas, triangulares, a, b, r;

    cout << "\n";
    cout << "Calculo do numero maximo de participantes de um jogo\n\n";
    cout << "* Informe o total de pecas quadradas: "; cin >> quadradas;
    cout << "* Informe o total de pecas triangulares: "; cin >> triangulares;

    a = quadradas;
    b = triangulares;

    do {
        r = a%b;
        a = b;
        b = r;
    } while(b != 0);

    cout << "\n=> Considerando " << quadradas << " pecas quadradas e ";
    cout << triangulares << " pecas triangulares, devemos ter no maximo " << a << " participantes\n\n";


    return 0;

 }

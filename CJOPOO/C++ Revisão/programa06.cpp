#include <iostream>

using namespace std;

int main() {
    int mes;

    cout << "\n";
    cout << "Estrutura de controle com multipla escolha\n\n";
    cout << "* Informe o numero equivalente ao mes escolhido: "; cin >> mes;

    switch(mes) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            cout << "O mes " << mes << " Tem 31 dias\n";
            break;
        case 4:
        case 6:
        case 9:
        case 11:
            cout << "O mes " << mes << " Tem 30 dias\n";
            break;
        case 2:
            cout << "O mes " << mes << " Tem 28 dias\n";
            break;
        default:
            cout << "O mes " << mes << " Nao existe!\n";
    }

    cout << "\n\n";

    return 0;
}

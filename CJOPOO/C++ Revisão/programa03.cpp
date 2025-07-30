#include <iostream>
#include <iomanip>

using namespace std;

int main(void) {

    float n1, n2, media{0};
    cout << "\n";
    cout << "Desvio condicional simples\n\n";
    cout << "* Informe as duas notas do aluno: ";

    cin >> n1 >> n2;

    media = (n1 + n2) / 2;

    cout << setprecision(3);
    cout << setiosflags(ios::showpoint);

    if(media >= 6 ) cout << "* O aluno foi aprovado com media final " << media << "!\n";

    return 0;
}

#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>

//Lógica gulosa, porém funcional

using namespace std;

vector<int> resultados;

void contador(int N, int V, vector<int> &P, int soma, int valoresTotais) {
    for(int i = N-1; i >= 0; i--) {
        if(V < P[i]) continue;
        if((soma + P[i]) < V || (soma + P[i]) == V) {
            soma += P[i];
            valoresTotais += 1;
        };
        if(soma == V) {
            resultados.push_back(valoresTotais);
            return;
        }
    }
}

int main(void) {
    int N, V;
    int soma = 0;
    int valoresTotais = 0;

    cout << "Informe quantos valores serao inseridos no vetor (entre 1 e 10)" << endl;
    do {
        cin >> N;
    } while(N < 1 || N > 10);

    vector<int> P(N);

    cout << "Informe os valores do vetor" << endl;
    for(int i = 0; i < N; i++) {
        do {
            cout << "Informe o valor " << i+1 << " do vetor (entre 1 e 10000) ";
            cin >> P[i];
        } while(P[i] < 1 || P[i] > 10000);
    }

    cout << "Insira um valor inteiro V, para saber quantos valores do vetor precisarao ser somados para alcancar V (entre 0 e 10^9)" << endl;
    do {
       cin >> V;
    } while(V < 0 || V > pow(10, 9));

    sort(P.begin(), P.end());

    for(int i = 0; i < P.size(); i++) {
        contador((N-i), V, P, soma, valoresTotais);
    }

    sort(resultados.begin(), resultados.end());

    if(resultados.size() == 1) {
        cout << "A soma de " << resultados[0] << " desses numeros resultara em " << V << endl;
    } else if(resultados.size() > 1) {
        cout << resultados.size() << " possibilidades encontradas: "<< endl;
        for(int i = 0; i < resultados.size(); i++) {
            cout << "A soma de " << resultados[i] << " desses numeros resultara em " << V << endl;
        }
    } else {
        cout << "Impossivel de solucionar.";
    }

    return 0;
}

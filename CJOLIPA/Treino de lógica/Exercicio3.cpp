#include <iostream>

int main(void) {

    while(true) {
        int N;
        do {
            std::cin >> N;
        } while(!(N >= 0) || !(N <= 1000));

        if(N == 0) break;

        int* L = new int[N];

        for(int i = 0; i < N; i++) {
            do {
                std::cin >> L[i];
            } while(!(L[i] >= 0) || !(L[i] <= 10000));
        }

        int salaVencedora = 0;
        int maiorPontuacao = 0;

        for(int i = 0; i < N; i++) {
            if(L[i] > maiorPontuacao) {
                maiorPontuacao = L[i];
                salaVencedora = i+1;
            }
        }

        std::cout << salaVencedora << std::endl;

        delete[] L;
        L = nullptr;
    }

    return 0;
}

#include <iostream>

int main(void) {
    int N;

    do {
        std::cin >> N;
        std::cin.ignore(80, '\n');
    } while(N <= 0 || N > 90);

    int* mI = new int[N];

    for(int i = 0; i < N; i++) {
        if(i > 0) {
            do {
                std::cin >> mI[i];
            } while(mI[i] < mI[i-1] || mI[i] <= 0 || mI[i] > 90);
        } else {
            do {
                std::cin >> mI[i];
            } while(mI[i] <= 0 || mI[i] > 90);
        }
    }

    for(int i = 0; i < N; i++) {
        if(mI[i] + 15 < mI[i+1]) {
            std::cout << mI[i] + 15;
            break;
        }
    }

    delete[] mI;
    mI = nullptr;

    return 0;
}

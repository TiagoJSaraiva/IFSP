#include <iostream>
#include <cmath>

int main() {
    int X1, Y1, X2, Y2;

    while(true) {
        if (std::cin >> X1 >> Y1 >> X2 >> Y2 && (X1 >= 1 && Y1 >= 1 && X2 >= 1 && Y2 >= 1) && (X1 <= 8 && Y1 <= 8 && X2 <= 8 && Y2 <= 8)) {
            if (X1 == X2 && Y1 == Y2) {
                std::cout << "Possible" << std::endl;
            }
            else if (std::abs(X1 - X2) == std::abs(Y1 - Y2)) {
                std::cout << "Possible" << std::endl;
            }
            else {
                std::cout << "Impossible" << std::endl;
            }
        } else if(X1 == 0 && Y1 == 0 && X2 == 0 && Y2 == 0) {
            break;
        }
    }

    return 0;
}


#include <iostream>
#include <fstream>

int main(void) {
    std::ofstream arqtxt("EXEMPLO1.txt", std::ios::trunc);

    std::cout << "Arquivo criado com sucesso" << std::endl;
    arqtxt.close();

    return 0;
}

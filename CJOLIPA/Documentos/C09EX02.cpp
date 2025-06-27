#include <iostream>
#include <fstream>
#include <string>

int main(void) {
    std::string mensagem;
    std::ofstream arqtxt("EXEMPLO1.txt", std::ios::app);

    std::cout << "Informe uma mensagem" << std::endl;
    std::cout << "--> ";

    std::getline(std::cin, mensagem);

    arqtxt << mensagem << std::endl;

    arqtxt.close();

    return 0;
}

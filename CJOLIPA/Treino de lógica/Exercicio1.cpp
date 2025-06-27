#include<cmath>
#include<iostream>
#include<vector>

int somapares = 0;
std::vector<int> sequencia;
int valor;
int produtoimpares = 1;
int i;
int main(void) {
  std::cout << "Digite uma sequencia de numeros positivos(para finalizar, digite 0)." << std::endl;
  while(true) {
    std::cin >> valor;
    if(valor == 0) break;
    if(valor < 0) continue;
    sequencia.push_back(valor);
  }

  for(i = 0; i < sequencia.size(); i++) {
    if((sequencia[i]%2) == 0) {
      somapares += std::pow(sequencia[i], 2);
    } else {
      produtoimpares *= std::pow(sequencia[i], 3);
    }
  }

  std::cout << "Soma dos quadrados dos numeros pares...: " << somapares << std::endl;
  std::cout << "Produto dos cubos dos numeros impares..: " << produtoimpares << std::endl;

  return 0;
}

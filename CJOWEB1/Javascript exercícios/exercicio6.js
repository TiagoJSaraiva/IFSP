variavel();

function variavel() {
    let x = 1;
    console.log(x); 
}

console.log(x); 


/*  O escopo de uma variável determina onde ela pode ser acessada. 
    Variáveis declaradas dentro de uma função não são visíveis fora dela, 
    garantindo encapsulamento e proteção contra interferências externas.
    Portanto, quanto tentamos acessar x por meio de "console.log(x)" dentro da função, o valor exibido no console é "1".
    Já no segundo caso, o computador não pode acessar o valor de x por ele estar encapsulado dentro de uma função e o console exibirá um erro. */
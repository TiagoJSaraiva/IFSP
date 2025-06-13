parouimpar();
faixaetaria();

function parouimpar() {
    let numero = prompt("insira um número");
    if (numero %2 == 0 ) {
        console.log("número é par");
    } else {
        console.log("número é impar");
    }
    console.log(numero %2)
}

function faixaetaria() {
    let idade = prompt("Insira sua idade em anos");
    if(idade < 0 || idade > 120) {
        console.log("você está mentindo");
    } else if(idade >= 0 && idade < 18) {
        console.log("você é uma criança/adolescente");
    } else if(idade >= 18 && idade <= 60) {
        console.log("você é um adulto"); 
    } else if(idade > 60 && idade <= 120) {
        console.log("você é um idoso");
    } else {
        console.log("erro");
    }
    }


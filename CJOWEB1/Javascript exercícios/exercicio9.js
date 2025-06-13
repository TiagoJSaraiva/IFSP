//potenciação();
filtrar();

function potenciação() {
    let array = [];
    let continuar = "sim";
    while(continuar != "n" ) {
        array.push(parseFloat(prompt("insira o valor")));
        continuar = prompt("Deseja continuar? (tecle n para não e outro valor para sim" );
    }

    let quadrados = array.map(function(numeros) {
        return numeros ** 2;
    });

    console.log(array);
    console.log(quadrados);
}

function filtrar() {
    let array = [];
    let continuar = "sim";
    while(continuar != "n" ) {
        array.push(prompt("insira a palavra"));
        continuar = prompt("Deseja continuar? (tecle n para não e outro valor para sim" );
    }

    let maiorquecinco = array.filter(function(palavras) {
        return palavras.length > 5;
    });

    console.log(array);
    console.log(maiorquecinco);
}
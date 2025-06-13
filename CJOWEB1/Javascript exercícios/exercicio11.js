/*function convertermaiusculo(frase) {
    return frase.toUpperCase();
}

let frase_maiusculo = convertermaiusculo(prompt("Insira uma frase"));
console.log(frase_maiusculo);*/


contarvogais(prompt("Insira uma palavra ou texto para saber quantas vogais ele tem."));

function contarvogais(palavra) {

    const vogais = "AEIOUaeiou";
    let contadordevogais = 0;

    for(let i = 0; i < palavra.length; i++) {
        if(vogais.includes(palavra[i])) {
            contadordevogais++;
        }
    }

    alert(contadordevogais);
    console.log(contadordevogais);
}
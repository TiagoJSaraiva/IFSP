soma();
truefalse();

function soma() {
    let numero1 = prompt("Insira um número");
    let numero2 = prompt("Insira outro número");
    numero1 = parseFloat(numero1);
    numero2 = parseFloat(numero2);
    console.log(numero1 + numero2);
} 

function truefalse() {
    let numero1 = prompt("Insira um número");
    let numero2 = prompt("Insira outro número");
    let numero3 = prompt("Insira mais um número");
    numero1 = parseFloat(numero1);
    numero2 = parseFloat(numero2);
    numero3 = parseFloat(numero3);
    if (numero1 > 0 && numero2 > 0 && numero3 > 0) {
        console.log(true);
    } else {
        console.log(false);
    }
}
 

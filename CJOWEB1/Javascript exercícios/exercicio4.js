let n = parseInt(prompt("insira um valor numérico"));

laco();

soma(n);

function laco() {
    let numero = 1;
    numero = parseFloat(numero);
    while(numero <= 10) {
        console.log(numero);
        numero++;
    }
}


function soma(numero) {
    let i = 1;
    let somatório = 0;

    while (i <= numero)  {
        somatório = somatório + i;
        i++;
    }
    console.log(somatório);
}
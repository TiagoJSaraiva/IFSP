//semana();

function semana() {
    let diasemana = ["domingo", "segunda", "terça", "quarta", "quinta", "sexta", "sabado"];

    for(let i = 0; i <= 6; i++) {
        console.log(diasemana[i]);
    }
}

let arranjo = [];
let maiornumero = modificar_array(arranjo);
console.log("o maior valor é " + maiornumero);

function modificar_array(arranjo) {
    
    let quercontinuar = "sim";

    while(quercontinuar != "N" ) {
    arranjo.push(parseInt(prompt("Insire o valor")));
    quercontinuar = prompt("deseja continuar inserindo valores no array? tecle N para NÃO e qualquer outr valor para SIM")
    }

    arranjo.sort((a, b) => b - a);
    console.log(arranjo);

    return arranjo[0];
}


conversao();
arranjonum();

function conversao() {
    let tempcelsius = parseFloat(prompt("Insira a temperatura em celsius"));
    let tempf;
    tempf = (tempcelsius * 1.8) + 32;
    console.log(tempf);
}

function arranjonum() {
    let arranjo = [];
    let continuar = "sim";
    let mediaarray = 0;

    while(continuar == "sim" || continuar == "s") {
        arranjo.push(parseFloat(prompt("insira o valor")));
        continuar = prompt("Deseja continuar? (sim para sim, qualquer outro valor para nao");
    }
    
    for(let i = 0; i < arranjo.length; i++) {
        mediaarray += arranjo[i];
    }

    console.log(arranjo);
    console.log(mediaarray/arranjo.length);
}


let carro = {

    marca: "Toyota",
    modelo: "Hilux",
    ano: "2010",

    exibirInfo: function() {
        console.log(carro.marca + " " + carro.modelo + " " + carro.ano);
    },

    anocarro_mudar: function() {
        let resp = prompt("deseja mudar o ano do carro? S para sim, qualquer outra resposta para não.");
        if(resp == "S") {
            carro.ano = prompt("Insira o ano atualizado do carro");
        }
    }
}

carro.exibirInfo();
carro.anocarro_mudar();
carro.exibirInfo();

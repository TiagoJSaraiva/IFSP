cadastro_email();
cadastro_nome();

function cadastro_email() {

let e_mail = "inv";
let email;

    while(e_mail == "inv")  {

        email = prompt("Insira seu email");
        let control = "N";
    
        for(let i = 0; i < email.length; i++) {
            if(email[i] == "@") {
                control = "S";
            }
        }


        if(control == "N") {
            alert("Email inválido");
        } else {
            if(email.includes(".com", email.length - 4)) {
                console.log("Email cadastrado com sucesso");
                e_mail = "valid";
            } else {
                alert("Email inválido");
            }
        }
    }

    console.log(email);

}

function cadastro_nome() {
    function obterIniciais(nomeCompleto) {
        let partesDoNome = nomeCompleto.split(" ");
        let iniciais = partesDoNome.map(palavra => palavra[0].toUpperCase());
        return iniciais.join(".");
    }
    
    let nome = prompt("Insira seu nome");
    console.log(obterIniciais(nome));
}

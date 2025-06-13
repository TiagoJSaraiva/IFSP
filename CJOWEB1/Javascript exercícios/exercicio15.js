const formulario = document.getElementById("meuFormulario");
const campoNome = document.getElementById("nome");
const mensagemForm = document.getElementById("mensagemForm");

formulario.addEventListener("submit", function() {
    event.preventDefault();

    mensagemForm.innerText = "Seu nome é: " + campoNome.value;
})

// .innerText = Serve para definir o texto de um elemento.

// .value = Serve para pegar o valor de uma variável atribuída a um elemento.
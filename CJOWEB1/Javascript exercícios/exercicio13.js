const botao = document.getElementById("mudarTexto");

botao.addEventListener("click", function() {

    document.getElementById("mensagem").innerText = "Texto atualizado!";
});
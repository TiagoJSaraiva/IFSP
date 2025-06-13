let nota1 = document.getElementById("nota1");
let nota2 = document.getElementById("nota2");
let calcularMedia = document.getElementById("calcularMedia");
let media = document.getElementById("media");

calcularMedia.addEventListener("click", function() {
    if(nota1.value == "" || nota2.value == "") {
        media.innerText = "Por favor, insira um valor dos dois lados";
    } else {
    media.innerText = "Média: " + ((parseFloat(nota1.value) + parseFloat(nota2.value))/2); }
});
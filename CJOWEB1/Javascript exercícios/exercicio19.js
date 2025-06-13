let calcular = document.getElementById("calcular");
let num1 = document.getElementById("num1");
let num2 = document.getElementById("num2");
let resultado = document.getElementById("resultado");

calcular.addEventListener("click", function() {
    if (num1.value == "" || num2.value == "") {
        resultado.innerText = "Por favor, insira valores válidos";
    } else {
    resultado.innerText = "Resultado: " + (parseFloat(num1.value) + parseFloat(num2.value)); }
});
let botaoContador = document.getElementById("botaoContador");
let contador = document.getElementById("contador");
let i = 0;

botaoContador.addEventListener("click", function() {
   contador.innerText = "Cliques: " + (i += 1); 
});
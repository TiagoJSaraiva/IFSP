let botaoAdicionar = document.getElementById("adicionar");
let inputTarefa = document.getElementById("novaTarefa");
let listaTarefas = document.getElementById("tarefas");

botaoAdicionar.addEventListener("click", function() {
    let textoTarefa = inputTarefa.value.trim();  

         if (textoTarefa !== "") {  
            let novaTarefa = document.createElement("li"); 
            novaTarefa.innerText = textoTarefa;  

            listaTarefas.appendChild(novaTarefa);  

            inputTarefa.value = "";  
        } else {
            alert("Por favor, digite uma tarefa!");  
        }
});
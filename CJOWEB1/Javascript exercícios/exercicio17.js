const adicionartarefa = document.getElementById("adicionarTarefa");
const listadetarefas = document.getElementById("listaDeTarefas");
const novatarefa = document.createElement("li");

novatarefa.innerText = "Nova Tarefa";

adicionartarefa.addEventListener("click", function() {
    listadetarefas.appendChild(novatarefa);
});

// .createElement = Cria um novo elemento.

// .appendChild = Adiciona um novo nó em um nó pai já existente.
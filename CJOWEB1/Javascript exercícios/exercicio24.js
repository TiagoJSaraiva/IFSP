document.getElementById("atualizarHorario").onclick = function() {
    let agora = new Date();  
    let horas = agora.getHours().toString().padStart(2, '0');   
    let minutos = agora.getMinutes().toString().padStart(2, '0'); 

    let horarioFormatado = `${horas}:${minutos}`;
    
    document.getElementById("horarioAtual").innerText = "Horário: " + horarioFormatado;
};
function alerta() {
    alert("Teste");
}

function ConfirmarEnvio() {
    // exibe uma janela de confirmação
    const resposta = window.confirm("Você tem certeza que deseja enviar as estas informações?")
    // se OK exibe uma janela de agradecimento
    if (resposta) {
        alert("Obrigado por enviar o formulário!");
        return true; //Permitiu o envio do formulário
    }
    return false; //se CANCELAR, impede o envio
}



const textElement = document.getElementById('text-hover');

textElement.addEventListener("mouseenter", () => {
    textElement.textContent = "Easter egg";
});

textElement.addEventListener('mouseleave', () => {
    textElement.textContent = "Texto";
});


// troca rcor

function trocarCor() {
    var Element = document.getElementById('myId');
    Element.style.backgroundColor = "#5e391f"
    Element.style.color = "#DECBA4"
    // Element.style.display = "grid"
}

function voltarCor() {
    var Element = document.getElementById('myId');
    Element.style.backgroundColor = "#A67B5B"
    Element.style.color = "#5e391f"
}

function expandirElemento() {
    let elemento = document.getElementById('myId');
    elemento.style.transition = '.5s';
    elemento.style.height = '250px';
    elemento.style.width = '250px';
    // console.log("EXPANDIR FUNCIONANDO");
}

function recolherElemento() {
    let elemento = document.getElementById('myId');
    elemento.style.transition = '.5s';
    elemento.style.height = '10px';
    elemento.style.width = '10px';
    elemento.style.color = 'transparent';
    // console.log("EXPANDIR FUNCIONANDO");
}


// ATIVA
document.getElementById('my-btn').addEventListener('click', function () {
    trocarCor();
    expandirElemento();
});


// VOLTA
document.getElementById('my-btn-rst').addEventListener('click', function () {
    voltarCor();
    recolherElemento()
});

// trocar imagem
function trocarImagem() {
    const image = document.getElementById('my-img');

    if (image.src.includes("img/nasus.jpg")) {
        image.src = "img/renekton.jpg";
    } else {
        image.src = "img/nasus.jpg";
    };
}

document.getElementById("my-btn-img").addEventListener('click', () => {
    trocarImagem();
});

function updateClock() {
 const hoursElement = document.querySelector(".hours")   
 const minutesElement = document.querySelector(".minutes")   
 const secondsElement = document.querySelector(".seconds")   

 const now = new Date();

 const hours = now.getHours().toString().padStart(2,"0");
 const minutes = now.getMinutes().toString().padStart(2,"0");
 const seconds = now.getSeconds().toString().padStart(2,"0");

 hoursElement.textContent = hours;
 minutesElement.textContent = minutes;
 secondsElement.textContent = seconds;

 console.log("teste");
}

setInterval(updateClock, 1000)
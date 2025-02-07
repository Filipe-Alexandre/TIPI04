// Seleciona todos os botões que abrem modais
const openButtons = document.querySelectorAll(".openModal");
const closeButtons = document.querySelectorAll(".closeModal");
const modals = document.querySelectorAll(".modal");

// Adiciona evento de clique para abrir cada modal correspondente
openButtons.forEach(button => {
    button.addEventListener("click", () => {
        const modalId = button.getAttribute("data-modal");
        document.getElementById(modalId).style.display = "flex";
    });
});

// Adiciona evento de clique para fechar os modais
closeButtons.forEach(button => {
    button.addEventListener("click", () => {
        button.closest(".modal").style.display = "none";
    });
});

// Fecha o modal ao clicar fora dele
window.addEventListener("click", (event) => {
    modals.forEach(modal => {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    });
});



// function abrirAindaEstouAqui() {
//     window.open('https://www.imdb.com/pt/title/tt14961016/', '_blank'); 
// }

// function abrirChicoBento() {
//     window.open('https://www.imdb.com/pt/title/tt30868610/', '_blank'); 
// }

// function abrirMoana() {
//     window.open('https://www.imdb.com/pt/title/tt13622970/', '_blank');
// }

// function abrirMufasa() {
//     window.open('https://www.imdb.com/pt/title/tt13186482/', '_blank');
// }

// function abrirAltoCompadecida() {
//     window.open('https://www.imdb.com/pt/title/tt28696532/', '_blank');

// }
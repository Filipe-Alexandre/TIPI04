// -------------------------------MODAL-------------------------------

// Seleciona todos os botões que abrem modais
const openBtn = document.querySelectorAll(".openModal");
const closeBtn = document.querySelectorAll(".closeModal");
const modals = document.querySelectorAll(".modal");

openBtn.forEach(div => {
    div.addEventListener("click", () => {
        const modalId = div.getAttribute("data-modal");
        const modal = document.getElementById(modalId);

        // Verifica se o modal existe antes de tentar abrir
        if (modal) {
            modal.style.display = "flex";
        } else {
            console.error(`Modal com ID '${modalId}' não encontrado!`);
        }
    });
});

// Adiciona evento de clique para fechar os modais
closeBtn.forEach(button => {
    button.addEventListener("click", () => {
        const modal = button.closest(".modal");

        if (modal) {
            modal.style.display = "none";
        }
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

// -------------------------------FORMULÁRIO-------------------------------

document.getElementById("cadastroForm").addEventListener("submit", function (event) {
    event.preventDefault(); // Impede o envio padrão do formulário

    document.getElementById("mensagem").textContent = "Cadastro efetuado com sucesso!";
    document.getElementById("mensagem").style.display = "block";

    setTimeout(() => {
        document.getElementById("mensagem").style.display = "none";
        document.getElementById("cadastroForm").reset();
    }, 3000);
});

document.getElementById("cancelar").addEventListener("click", function () {
    document.getElementById("modalForm").style.display = "none";

    // document.getElementById("cadastroForm").reset();
});

function formBg() {
    document.getElementById("overlay").style.display = "flex";
}

// -------------------------------COPY-------------------------------

document.getElementById("ano").textContent = new Date().getFullYear();
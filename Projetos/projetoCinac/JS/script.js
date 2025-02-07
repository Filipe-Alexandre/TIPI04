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

const form = document.querySelector("form");
const nome = document.querySelector("nome");
const telefone = document.querySelector("telefone");
const email = document.querySelector("email");
const errorMessages = document.querySelector(".error-message");

form.addEventListener("submit", function (event) {
    event.preventDefault();
    resetError();
    validateInputs();
});

function resetError() {
    errorMessages.forEach((errorMessage) => {
        errorMessage.innerText = "";
    });
    nome.parentElement.classList.remove("error");
    telefone.parentElement.classList.remove("error");
    email.parentElement.classList.remove("error");
}

function validateInputs() {
    const nomeValue = nome.value.trim();
    const telefoneValue = telefone.value.trim();
    const emailValue = email.value.trim();

    if (nomeValue === "") {
        setError(nome, "O campo nome não pode ficar em branco!");
    }

    if (telefoneValue === "") {
        setError(telefone, "O campo telefone não pode ficar em branco!");
    }

    if (emailValue === "") {
        setError(email, "O campo e-mail não pode ficar em branco!");
    }

    function setError(input, errorMessage) {
        const errorMessageElement = input.nextElementSibling;
        errorMessageElement.innerText = errorMessage;
        input.parentElement.classList.add("error");
    }
}
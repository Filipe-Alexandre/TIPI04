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

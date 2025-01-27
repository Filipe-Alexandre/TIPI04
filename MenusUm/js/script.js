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
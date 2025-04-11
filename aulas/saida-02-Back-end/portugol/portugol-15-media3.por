programa {
  funcao inicio() {
    real nota1, nota2, media

    escreva("Digite aqui suas notas.\n1ª nota:\n")
    leia(nota1)
    escreva("2ª nota:\n")
    leia(nota2)

    media = (nota1 + nota2) / 2

    escreva("sua média foi de: \n", media)

    se(media >= 7 ) {
      escreva("\nVocê foi Aprovado")
    } senao se ((media >= 4) e (media <= 6.9)) {
      escreva("\nVocê está de Recuperação")
    } senao se (media < 4) {
      escreva("\nVocê foi Reprovado")
    }
  }
}

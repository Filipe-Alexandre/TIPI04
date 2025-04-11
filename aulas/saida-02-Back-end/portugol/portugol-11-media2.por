programa {
  funcao inicio() {
    real nota1, nota2, media

    escreva("Digite a 1ª nota:\n")
    leia(nota1)

    escreva("Digite a 2ª nota:\n")
    leia(nota2)

    media = (nota1 + nota2) / 2
    
    escreva("Sua média é de: \n", media)
    se(media >= 8) {
      escreva("\nVocê foi aprovado")
    } senao {
      escreva("\nVocê foi reprovado")
    }
  }
}
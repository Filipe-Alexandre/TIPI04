programa {
    inclua biblioteca Matematica
    funcao inicio() {
      real altura, pesoIdeal
      escreva("Cálculo de IMC\nDigite sua altura:\n")
      leia(altura)

      pesoIdeal = (72.2 * altura) - 58
      escreva("O seu peso ideal é de: \n", Matematica.arredondar(pesoIdeal),"kg")
  }
}

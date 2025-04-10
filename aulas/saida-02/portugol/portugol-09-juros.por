programa {
  funcao inicio() {
    real investimento, porcentagem = 0.061, periodo, resultado


    escreva("Calculo de juros simples.\ninsira aqui seu valor de investimento: \nR$")
    leia(investimento)

    escreva("\nInsira o tempo de investimento:\n")
    leia(periodo)

    resultado = investimento + (investimento * porcentagem * periodo)
    escreva("\nO retorno final será de\nR$",resultado)

  }
}

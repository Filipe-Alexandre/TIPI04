programa {
  funcao inicio() {
    inteiro numero

    escreva("Informe um numero inteiro:\n")
    leia(numero)

    se(numero > 0) {
      escreva("O número ", numero, " é positivo")
    }
    senao se(numero < 0) {
      escreva("O número ", numero, " é negativo")
    }
    senao {
      escreva("O número é ZERO!")
    }
  }
}


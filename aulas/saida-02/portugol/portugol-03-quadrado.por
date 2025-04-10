programa {
  funcao inicio() {
    inteiro numero1, numero2, quadrado1, quadrado2, resultado


    escreva("Digite o primeiro número: \n")
    leia(numero1)
    escreva("Digite o segundo número: \n")
    leia(numero2)

    quadrado1 = numero1 * numero1
    escreva(numero1,"² = ", quadrado1, "\n")
    quadrado2 = numero2 * numero2
    escreva(numero2,"² = ", quadrado2, "\n")

    resultado = quadrado1 + quadrado2
    escreva(quadrado1, " + ", quadrado2, " = ", resultado)

    escreva("\nO resultado final da operação é: ", resultado)
  }
}

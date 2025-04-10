programa {
  funcao inicio() {
    real salario, resultado
    inteiro horas

    escreva("\nDigite o salário por hora: \nR$")
    leia(salario)

    escreva("\nDigite a quantidade de horas trabalhadas: \n")
    leia(horas)

    resultado = salario * horas

    escreva("\nO Salário final do funcionário será de: \nR$", resultado)
  }
}
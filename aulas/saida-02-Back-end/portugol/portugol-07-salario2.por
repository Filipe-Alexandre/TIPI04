programa {
  funcao inicio() {
    real salario, valorExtras, horasRealizadas, descontos, liquido

    escreva("Insira o salário do funcionário: \nR$")
    leia(salario)

    escreva("\nInsira o valor das horas extras: \nR$")
    leia(valorExtras)

    // escreva("\nQuantidade de horas realizadas:\nHoras: ")
    // leia(horasRealizadas)

    escreva("\nInsira os descontos na folha de pagamento: \nR$")
    leia(descontos)

    liquido = (salario + valorExtras) - descontos
    // liquido = salario + (valorExtras * horasRealizadas) - descontos
    escreva("\nO salário líquido do funcionário sera de: \nR$", liquido)
  }
}

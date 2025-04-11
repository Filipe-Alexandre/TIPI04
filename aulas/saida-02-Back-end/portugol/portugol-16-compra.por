programa {
  funcao inicio() {
    real valorCompra, desconto, resultado

    escreva("qual o valor da compra?\nR$")
    leia(valorCompra)

    se (valorCompra > 1000) {
      desconto = 0.1
      resultado = (valorCompra - (valorCompra*desconto))
      escreva("Você receberá um desconto de 10%\nSua compra saiu \nde R$", valorCompra, "\npor R$", resultado)
    } senao se ((valorCompra >= 500) e (valorCompra <= 1000) ) {
      desconto = 0.05
      resultado = (valorCompra - (valorCompra*desconto))
      escreva("Você receberá um desconto de 5%\nSua compra saiu \nde R$", valorCompra, "\npor R$", resultado)
    } senao {
      escreva("sua compra saiu no valor de\n R$", valorCompra)
    }

  }
}

programa {
  funcao inicio() {
    inteiro num1, num2

    escreva("insira dois número para verificar qual é maior:\n1º número:\n")
    leia(num1)
    escreva("2º número:\n")
    leia(num2)

    se(num1 > num2) {
      escreva("o número ", num1, " é maior que ", num2, "\n")
    } senao se (num2 > num1){
      escreva("o número ", num2, " é maior que ", num1, "\n")
    } senao se (num1 == num2) {
      escreva("Os números ", num1, " e ", num2, " São iguais!")
    }
  }
}

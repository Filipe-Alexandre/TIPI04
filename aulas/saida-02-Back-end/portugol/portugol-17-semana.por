programa {
  funcao inicio() {
    inteiro dia
    escreva("Digite eum número de 1 à 7\n")
    leia(dia)
    
    escolha(dia) {
      caso 1: 
        escreva("Domingo")
        pare
      caso 2: 
        escreva("Segunda-Feira")
        pare
      caso 3: 
        escreva("Terça-Feira")
        pare
      caso 4: 
        escreva("Quarta-Feira")
        pare
      caso 5: 
        escreva("Quinta-Feira")
        pare
      caso 6: 
        escreva("Sexta-Feira")
        pare
      caso 7: 
        escreva("Sabado")
        pare
      caso contrario:
        escreva("Opção inválida")
    }
  }
}

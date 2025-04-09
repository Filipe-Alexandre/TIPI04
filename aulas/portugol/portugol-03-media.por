programa {
  funcao inicio() {
    cadeia nomeAluno = "Filipe"
    real nota1, nota2, nota3, nota4, media

  escreva("Digite seu nome: ")
  leia(nomeAluno)

  escreva("Digite a primeira nota:\n ")
  leia(nota1)

  escreva("Digite a segunda nota:\n ")
  leia(nota2)

  escreva("Digite a terceira nota:\n ")
  leia(nota3)

  escreva("Digite a quarta nota:\n ")
  leia(nota4)

  media = (nota1 + nota2 + nota3 + nota4) / 4
  escreva("A media de ", nomeAluno, " é de: ", media )

  }
}

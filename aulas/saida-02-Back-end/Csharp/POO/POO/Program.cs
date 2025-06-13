//CLASSES, ATRIBUTOS e MÉTODOS
//cria um novo objete do tipo referencial do tipo Pessoa com uma nova instancia 
Pessoa pessoa = new();

//recebendo os valores para os atributos do objeto "pessoa"
pessoa.nome = "Filipe";
pessoa.idade = 20;

//atribuindo valores para os atributos do objeto
//pessoa.nome = Console.ReadLine();
//pessoa.idade = int.Parse(Console.ReadLine());

//acessando o metodo da classe pessoa
pessoa.Apresentar();

//---------------------- ENCAPSULAMENTO ----------------------//

ContaBancaria conta = new ContaBancaria();
conta.Depositar(1000);
conta.Sacar(500);
Console.WriteLine($"R${conta.ConsultarSaldo()}");

//------------------------- HERANÇA -------------------------//
Cachorro dog = new Cachorro();
dog.Comer();
dog.Latir();
dog.DadosAnimal();

//---------------------- POLIMORFISMO ----------------------//
Forma forma = new Coracao();
forma.Desenhar();

//------------------------ ABSTRAÇÃO -----------------------//
Funcionario funcionario = new Gerente();
funcionario.CalcularSalario();

public class Animal
{
    private string nome = "Snoopy";
    private string raca = "Beagle";
    //atributo privado: acesso apenas no escopo da própria classe

    public void Comer()
    {
        Console.WriteLine("Comendo. . .");
    }

    public void DadosAnimal()
    {
        Console.WriteLine($"Nome: {this.nome}\nRaça: {raca}");
        //this se refere a classe em que se está. (this.nome é da classe Animal)
    }
}

public class Cachorro : Animal
{

    public void Latir()
    {
        Console.WriteLine("Latindo. . .");
    }


}
//classe cachorro herda todos atributos de animal
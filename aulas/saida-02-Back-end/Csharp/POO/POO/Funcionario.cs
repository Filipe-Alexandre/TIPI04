public abstract class Funcionario
{
    public string Nome;
    public abstract void CalcularSalario();

}

public class Gerente : Funcionario
{
    public override void CalcularSalario()
    {
        Console.WriteLine($"Salário do gerente: R$5000,00");
    }

}
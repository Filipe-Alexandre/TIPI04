using System.ComponentModel.Design;

Console.WriteLine("Escreva um número para saber se é positivo, negativo ou nulo");
int num = int.Parse(Console.ReadLine());

if (num == 0)
{
    Console.WriteLine("O número é nulo (0)");
} else if (num > 0)
{
    Console.WriteLine("O número é positivo");
} else
{
    Console.WriteLine("O número é negativo");
}

using System.ComponentModel.Design;

Console.WriteLine("Escreva um número para saber se é positivo, negativo ou nulo");
int num = int.Parse(Console.ReadLine());

if (num % 2 == 0)
{
    Console.WriteLine("O número é par");
}
else
{
    Console.WriteLine("O número é impar");
}

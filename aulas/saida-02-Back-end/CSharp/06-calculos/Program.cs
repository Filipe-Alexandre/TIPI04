Console.WriteLine("Informe dois números e mostre na tela sua soma, subtração, divisão e multiplicação");

int num1 = int.Parse(Console.ReadLine());
int num2 = int.Parse(Console.ReadLine());
Console.WriteLine($"Resultado das operações:\n");

if (num2 == 0)
{
    Console.WriteLine($"{num1} + {num2} = {num1 + num2}");
    Console.WriteLine($"{num1} - {num2} = {num1 - num2}");
    Console.WriteLine($"{num1} : {num2} = [Não pode ser dividido por 0]");
    Console.WriteLine($"{num1} * {num2} = {num1 * num2}");
} else
{
    Console.WriteLine($"{num1} + {num2} = {num1 + num2}");
    Console.WriteLine($"{num1} - {num2} = {num1 - num2}");
    Console.WriteLine($"{num1} : {num2} = {num1 / num2}");
    Console.WriteLine($"{num1} * {num2} = {num1 * num2}");

}
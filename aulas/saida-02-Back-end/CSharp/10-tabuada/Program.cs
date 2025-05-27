Console.WriteLine("informe um numero para exibir a tabuada");
int num = int.Parse(Console.ReadLine());

for (int i = 0; i <= 10; i++)
{
    Console.WriteLine($"{num} x {i} = {num*i}");
}

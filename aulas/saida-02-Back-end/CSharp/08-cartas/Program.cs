Console.WriteLine("Leia duas cartas (valores de 1 a 13) e informe qual delas é maior ou se houve empate.");
Console.WriteLine("1ª Carta: ");
int carta1 = int.Parse(Console.ReadLine());
Console.WriteLine("2ª Carta: ");
int carta2 = int.Parse(Console.ReadLine());

if (carta1 < 1 || carta1> 13 || carta2 < 1 || carta2 > 13)
{
    Console.WriteLine("Valores Inválidos");
} else if (carta1 == carta2)
{
    Console.WriteLine($"1ª Carta: {carta1}\n2ªCarta: {carta2}\n==EMPATE==");
} else if (carta1 > carta2)
{
    Console.WriteLine($"1ª Carta é Maior ({carta1})");
} else
{
    Console.WriteLine($"2ª Carta é Maior ({carta2})");
}

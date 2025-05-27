Console.WriteLine("Informe a pontuação dos dois times e informe qual deles ganhou.");
Console.WriteLine("Pontuação do TIME A");
int time1 = int.Parse(Console.ReadLine());
Console.WriteLine("Pontuação do TIME B");
int time2 = int.Parse(Console.ReadLine());

if (time1 == time2) {
Console.WriteLine("╔═════════════════════════╗");
Console.WriteLine("║    Time A  x  Time B    ║");
Console.WriteLine("║    Resultado: EMPATE    ║");
Console.WriteLine("╚═════════════════════════╝");

}
else if (time1 > time2)
{
    Console.WriteLine("CAMPEÃO FOI O TIME");
    Console.WriteLine("....1....");
    Console.WriteLine("...11....");
    Console.WriteLine("..1.1....");
    Console.WriteLine("....1....");
    Console.WriteLine("....1....");
    Console.WriteLine("....1....");
    Console.WriteLine("..11111..");
} else
{
    Console.WriteLine("CAMPEÃO FOI O TIME");
    Console.WriteLine("..22222..");
    Console.WriteLine("......2..");
    Console.WriteLine("......2..");
    Console.WriteLine("..22222..");
    Console.WriteLine("..2......");
    Console.WriteLine("..2......");
    Console.WriteLine("..22222..");
}

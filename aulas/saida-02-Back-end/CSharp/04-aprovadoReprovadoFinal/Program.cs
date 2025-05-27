Console.WriteLine("Informe as notas do aluno, para saber sua situação");

double nota1 = double.Parse(Console.ReadLine());
double nota2 = double.Parse(Console.ReadLine());
double media = (nota1 + nota2) / 2;
if (media >= 7)
{
    Console.WriteLine("APROVADO");
}
else if (media >=5)
{
    Console.WriteLine("RECUPERAÇÃO");
} else
{
    Console.WriteLine("REPROVADO");
}
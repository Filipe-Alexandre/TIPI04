Console.WriteLine("Informe as notas do aluno, se a média for cima de 6, ele será aprovado");

double nota1 = double.Parse(Console.ReadLine());
double nota2 = double.Parse(Console.ReadLine());
double media = (nota1 + nota2) / 2;
if (((nota1 + nota2) / 2) >= 6)

{
    Console.WriteLine("APROVADO");
} else
{
    Console.WriteLine("REPROVADO");
}
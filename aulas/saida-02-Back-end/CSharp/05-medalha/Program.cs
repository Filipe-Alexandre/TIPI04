Console.WriteLine("Digite a posição do atleta:\n");
int posicao = int.Parse(Console.ReadLine());
//int posicao = Convert.ToInt32(Console.ReadLine());
switch(posicao)
{
    case 1:
        Console.WriteLine("Ouro");
        break;
    case 2:
    Console.WriteLine("Prata");
        break;
    case 3:
    Console.WriteLine("Bronze");
        break;
    default:
    Console.WriteLine("Nenhuma");
        break;
}

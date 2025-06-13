ProdutoService servico = new ProdutoService();
bool continuar = true;

while (continuar)
{
    Console.Clear();
    Console.WriteLine("=== Sistema de Mercado ===");
    Console.WriteLine("1. Listar produtos");
    Console.WriteLine("2. Cadastrar produtos");
    Console.WriteLine("3. Atualizar produtos");
    Console.WriteLine("4. Excluir produtos");
    Console.WriteLine("5. Sair");
    Console.WriteLine("Opção: ");
    string opcao = Console.ReadLine();

    switch (opcao)
    {
        case "1":
            servico.ListarProdutos();
            break;
        case "2":
            servico.CadastrarProdutos();
            break;
        case "3":
            servico.AtualizarProduto();
            break;
        case "4":
            servico.ExcluirProduto();
            break;
        case "5":
            continuar = false;
            break;
        default:
            Console.WriteLine("Opção Inválida");
            break;
    }
    if(continuar)
    {
        Console.WriteLine("\nPressione Qualquer tecla para continuar. . .");
        Console.ReadKey();
    }


}
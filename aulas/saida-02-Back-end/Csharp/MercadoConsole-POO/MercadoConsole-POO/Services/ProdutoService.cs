public class ProdutoService
{
    private List<IProduto> produtos = new List<IProduto>();
    private int proximoId = 1;

    public ProdutoService()
    {
        produtos.Add(new Produto { Id = proximoId++, Nome = "Panela", Preco = 30.50m });
        produtos.Add(new ProdutoPerecivel { Id = proximoId++, Nome = "Café", Preco = 50.75m, DataValidade = DateTime.Today.AddDays(7) });
    }

    public void ListarProdutos()
    {
        Console.WriteLine("\n---=== Lista de Produtos ===---");
        if (!produtos.Any())
        {
            Console.WriteLine("Nenhum produto cadastrado!");
            return;
        }
        foreach (var produto in produtos)
        {
            Console.WriteLine(produto);
        }
    }

    public void CadastrarProdutos()
    {
        Console.WriteLine("\nTipo do Produto: ");
        Console.WriteLine("1. Comum");
        Console.WriteLine("2. Perecível");
        Console.WriteLine("Escolha: . . .");
        string tipo = Console.ReadLine();

        Console.WriteLine("Nome:");
        string nome = Console.ReadLine();

        Console.WriteLine("Preço: ");
        if (!decimal.TryParse(Console.ReadLine(), out decimal preco))
        {
            Console.WriteLine("Preço Inválido");
            return;
        }
        if (tipo == "1")
        {
            produtos.Add(new Produto { Id = proximoId++, Nome = nome, Preco = preco });
        }
        else if (tipo == "2")
        {
            Console.WriteLine("Data de Validade: (dd/mm/aaa): ");
            if (!DateTime.TryParse(Console.ReadLine(), out DateTime validade))
            {
                Console.WriteLine("Data Inválida!");
                return;
            }
            produtos.Add(new ProdutoPerecivel
            {
                Id = proximoId++,
                Nome = nome,
                Preco = preco,
                DataValidade = validade
            });
        }
        else
        {
            Console.WriteLine("Tipo Inválido!");
            return;
        }
        Console.WriteLine("Produto adicionado com sucesso!");
    }

    public void AtualizarProduto()
    {
        Console.WriteLine("\nID do produto para atualizar:");
        if (!int.TryParse(Console.ReadLine(), out int id))
        {
            Console.WriteLine("ID Inválido");
            return;
        }

        var produto = produtos.FirstOrDefault(p => p.Id == id);
        if (produto == null)
        {
            Console.WriteLine("Produto não encontrado!");
            return;
        }

        Console.Write("\nNovo Nome: ");
        produto.Nome = Console.ReadLine();

        Console.Write("\nNovo Preço: R$");
        if (!decimal.TryParse(Console.ReadLine(), out decimal preco))
        {
            Console.WriteLine("Preço inválido");
            return;
        }
        produto.Preco = preco;

        if (produto is ProdutoPerecivel perecivel)
        {
            Console.Write("Nova Validade (dd/mm/aaaa): ");
            if (DateTime.TryParse(Console.ReadLine(), out DateTime novaValidade))
            {
                perecivel.DataValidade = novaValidade;
            }
            else
            {
                Console.WriteLine("Data inválida!");
            }
        }

        Console.WriteLine("Produto atualizado com sucesso!");
    }

    public void ExcluirProduto()
    {
        Console.WriteLine("\nID do produto para excluir: ");
        if (!int.TryParse(Console.ReadLine(), out int id))
        {
            Console.WriteLine("ID inválido");
            return;
        }

        var produto = produtos.FirstOrDefault(p => p.Id == id);
        if (produto == null)
        {
            Console.WriteLine("Produto não encontrado");
            return;
        }

        produtos.Remove(produto);
        Console.WriteLine("Produto excluído com sucesso!");
    }
}
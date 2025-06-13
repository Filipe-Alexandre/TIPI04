public abstract class ProdutoBase : IProduto
{
    public int Id { get; set; }
    public string Nome { get; set; }
    public decimal Preco { get; set; }
    public abstract string Descricao();
    public override string ToString()
    {
        return $"ID: {Id} | Nome: {Nome} | Preço: R${Preco:F2}";
    }
}


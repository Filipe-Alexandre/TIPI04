public class ProdutoPerecivel : Produto
{
    public DateTime DataValidade { get; set; }

    public override string Descricao()
    {
        return $"Produto perecível: {Nome} (Validade: {DataValidade:dd/MM/yyyy})";
    }

    public override string ToString()
    {
        return base.ToString() + $" | Validade: {DataValidade:dd/MM/yyyy}";
    }
}

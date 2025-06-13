internal class ContaBancaria
{
    private double saldo;
    //atributo privado: acesso apenas no escopo da própria classe
    public void Depositar(double valor)
    {
        if(valor > 0)
        {
            saldo += valor;
        }
    }
    //método publico (void sem retorno): acesso em qualquer classe da aplicação

    public void Sacar(double valor)
    {
        if (valor <= saldo)
        {
            saldo -= valor;
        }
    }
    //método publico (void sem retorno): acesso em qualquer classe da aplicação

    public double ConsultarSaldo()
    {
        return saldo;
    }
    /* método publico com retorno de um atributo privado
    pode ser acessado e, qualquer classe da aplicação */

}

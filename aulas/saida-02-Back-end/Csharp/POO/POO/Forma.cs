public class Forma
{
    public virtual void Desenhar()
    {
        Console.WriteLine("........");
        Console.WriteLine("........");
        Console.WriteLine("........");
        Console.WriteLine("........");
        Console.WriteLine("........");
        Console.WriteLine("........");
        Console.WriteLine("........");

    }

}

public class Coracao : Forma
{
    public override void Desenhar()
    {
        Console.WriteLine(".**..**.");
        Console.WriteLine("****.***");
        Console.WriteLine("********");
        Console.WriteLine(".******.");
        Console.WriteLine("..****..");
        Console.WriteLine("...**...");
        Console.WriteLine("....*...");

    }
}





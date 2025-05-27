Console.WriteLine("Dona Mônica tem 2 filhos. Leia a idade dos dois filhos e informe a idade de Dona Mônica, sabendo que ela é 1 ano mais velha que a soma das idades dos filhos.");
Console.WriteLine("Idade do 1º filho de dona Mônica");
double filho1 = double.Parse(Console.ReadLine());
Console.WriteLine("Idade do 2º filho de dona Mônica");
double filho2 = double.Parse(Console.ReadLine());

Console.WriteLine($"A idade de Dona Monica é {filho1+filho2+1} anos");


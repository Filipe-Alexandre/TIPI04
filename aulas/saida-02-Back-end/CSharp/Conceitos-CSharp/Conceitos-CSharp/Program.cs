/* TIPOS NUMÉRICOS */
byte a = 10;
int idade = 23;
long populacao = 7000000000000;

// TIPOS REAIS
float peso = 60.4f;
double altura = 1.85;
decimal salario = 2500.99m; //inteiro aceita normal, mas se realmente for declarar um decimal, é necessário colocar "." e um "m" no final

//LÓGICOS E TEXTOS
bool aprovado = true;
bool negado = false;
char inicial = 'F'; // apostrofo em char
string nome = "Filipe"; //aspas duplas em string

/*  
 *  INFERÊNCIA COM VAR 

    depende do valor que for digitado nela
    se for com aspas duplas, é string
    aspas simples, char
    numero, int
*/
var cidade = "São Paulo";
var nota = 8.5;
var letra = 'A';
var boleana = true;


Console.WriteLine("Nome: "+nome); //concatenação
Console.WriteLine($"Altura: {altura}"); //interpolação
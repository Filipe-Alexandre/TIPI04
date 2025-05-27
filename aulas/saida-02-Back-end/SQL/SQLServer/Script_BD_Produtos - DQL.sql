/*
	DQL - Data Query Language - Linguagem de Consulta de Dados
	SELECT = basicamente o �nico comando do	DQL
*/

USE BD_Produtos
	GO

--Seleciona todas as colunas e linhas da tabela informada
SELECT * FROM Produto


--Seleciona colunas especificas de uma tabela
SELECT Nome, Preco FROM Produto
SELECT IdProduto, Nome FROM Produto

--Ordenando colunas
SELECT Nome, Preco FROM Produto ORDER BY Preco ASC --Crescente (Por padr�o � ASC)
SELECT Nome, Preco FROM Produto ORDER BY Preco DESC --Decrescente (Para setar ordem inversa � necess�rio colocar DESC ap�s o nome da coluna)
SELECT Nome, EhLancamento, Preco FROM Produto ORDER BY EhLancamento DESC, Nome --Duas ordana��es (Primeiro organiza os lancamentos desc, depois separa por virgula para ordenar alfabeticamente)

SELECT IdCategoria, Nome FROM Categoria ORDER BY Nome ASC
SELECT IdProduto, Nome, Estoque  FROM Produto ORDER BY Estoque

-- SELECT TOP N
SELECT TOP 3 Nome, Estoque FROM Produto ORDER BY Estoque DESC --(A coluna que est� no ORDER BY n�o necessariamente precisa estar no SELECT, Podemos mostrar uma coluna ordenada por outra coisa, como os nomes ordenados por pre�o, mesmo sem eles aparecerem)

-- APELIDO DE COLUNAS - ALIAS (AS)
SELECT IdProduto AS C�digo, Nome, Preco AS [Pre�o dos produtos] FROM Produto ORDER BY Preco -- nome original AS novo nome e virgula. se o nome tiver espa�o, precisa ficar entre colchetes

SELECT Nome, Preco AS Pre�o, GETDATE() AS Hora FROM Produto --colunas com fun��o n�o aparecem nome, ent�o podemos usar o AS nesses casos para nome�-las

--Filtrando dados - WHERE


/*
	OPERADORES ARITM�TICOS em ordem:
	1�: ^ - Pot�ncia
	2�: / - Divis�o
	    * - Multiplica��o
	3�: + - Soma
	    - - Subtra��o

	OPERADORES RELACIONAIS:
	= igual
	<> diferente
	> maior que
	< menor que
	>= maior ou igual
	<= menor ou igual

	OPERADORES L�GICOS:
	AND - && - S� � verdadeiro quando os dois operandos forem verdadeiros
	OR  - |  - S� � falso quando os dois operandos forem falsos
	NOT - !  - Inverte a opera��o

	TABELA DA VERDADE:
	V AND V = V
	V AND F = F
	F AND F = F
	F AND V = F

	V OR V = V
	V OR F = V
	F OR F = F
	F OR V = V

	NOT F = V
	NOT V = F

	PRECED�NCIA DE OPERADORES:
	1� NOT
	2� AND
	3� OR


	PRECED�NCIA ENTRE TODOS TIPOS DE OPERADORES
	1�: Operadores Aritm�ticos
	2�: Operadores Relacionais
	3� Operadores L�gicos

	() para for�ar uma ordem diferente
*/
-- SELECT com operadores relacionais e logicos
SELECT * FROM Produto WHERE Estoque <> 131 -- <> diferente
SELECT * FROM Produto WHERE Preco <= 200
SELECT * FROM Produto WHERE Estoque >= 50 AND EhLancamento = 1
SELECT * FROM Produto WHERE Estoque >= 50 OR EhLancamento = 1
SELECT * FROM Produto WHERE NOT (Estoque >= 50 OR EhLancamento = 1)
SELECT * FROM Produto WHERE Estoque <= 50 AND EhLancamento = 0

--OPERADORES IN
SELECT * FROM Produto WHERE IdProduto = 5 OR IdProduto = 7 OR IdProduto = 8
SELECT * FROM Produto WHERE IdProduto IN (5,7,8)
SELECT * FROM Produto WHERE IdProduto NOT IN (5,7,8)

--Operador BETWEEN
SELECT * FROM Produto WHERE IdProduto BETWEEN 4 AND 7
SELECT * FROM Produto WHERE IdProduto NOT BETWEEN 4 AND 7

--Operador LIKE
SELECT * FROM Produto WHERE Nome LIKE 'IPhone%' --nome Come�a com 'IPhone'
SELECT * FROM Produto WHERE Nome LIKE '%Pro' --nome Termina com 'Pro'
SELECT * FROM Produto WHERE Nome LIKE '%de%' -- Cont�m 'de'
--Utilizando tudo junto:
SELECT
	Nome,
	Preco AS Pre�o,
	Estoque
FROM Produto
WHERE Nome LIKE '%Pro%'
ORDER BY Estoque DESC

--JOIN (juntando tabelas)
SELECT
	CAT.IdCategoria,
	CAT.Nome AS CATEGORIA,
	CAT.IdDepartamento,
	DEP.Nome AS Dpto
FROM Categoria AS CAT
INNER JOIN Departamento AS DEP
ON DEP.IdDepartamento = CAT.IdDepartamento
--est� adicionando mais uma coluna e n�o substituindo alguma. vai mostrar todos os campos chamados no select
--primeiro cria a variavel e quando for chamar de onde vem d� o valor � variavel (com o AS) / CAT e DEP por exemplo
--podemos fazer isso tamb�m para as tabelas que ser�o mostradas


--SELECIONANDO PRODUTOS DA CATEGORIA ESPEC�FICA
SELECT  
	PRO.IdProduto,
	PRO.Nome,
	CAT.Nome AS Categoria	
FROM Produto AS PRO
INNER JOIN ProdutoCategoria AS PRC
ON PRC.IdProduto = PRO.IdProduto
INNER JOIN Categoria AS CAT
ON CAT.IdCategoria = PRC.IdCategoria
WHERE CAT.Nome = 'Roupas Esportivas'
--2 inner join + where
/*
selecionamos o que vai ser apresentado: id do produto(PRO.IdPoduto), o nome dele(PRO.Nome) e o nome da categoria (CAT.Nome)
isso tudo pegando da tabela de produto (AS PRO - Nomeada de	PRO)
buscamos dentro da ProdutoCategoria (AS PRC - Nomeada)
onde o IdProduto de cada tabela � igual
puxamos outro inner (Categoria AS CAT)
onde o Id da tabela relacional � igual a tabela de categorias
WHERE Serve para filtrar os itens que v�o aparecer, no caso 'roupas esportivas'
*/

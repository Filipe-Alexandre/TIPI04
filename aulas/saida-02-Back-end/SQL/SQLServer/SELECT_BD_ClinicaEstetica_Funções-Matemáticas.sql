--SELECT * FROM Cliente
/*
--FUNÇÕES DE STRING
SELECT	LOWER(Nome) AS Nome,
		--UPPER(Cidade) AS Cidade,
		--REPLACE(Nome, ' ', '-') AS [Nome sem espaço],
		--REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Nome, 'a', '4'), 'e', '3'),'O', '0'), 'i', '1'), 't', '7'), 's', '5') AS [Código],
		--TRIM (Nome), -- remove espaços
		--LEFT(Nome, 4) AS [Primeiras Letras], -- caracteres da esquerda
		--RIGHT(Nome, 4) AS [Últimas Letras], -- caracteres da direita
		LEN(Nome) AS [Qtde Caracteres], -- qtde de caracteres
		CHARINDEX (' ', Nome), -- encontra a posição de um elemento especifico
		LEFT(Nome, CHARINDEX(' ', Nome)) as [Pimeiro Nome], -- usa o espaço como ponto de referencia para pegar o nome
		RIGHT(Nome, LEN(Nome) - CHARINDEX(' ', Nome)) AS Sobrenome, -- usando o espaço como base para pegar o sobrenome
		REVERSE(NOME) AS [Nome invertido], -- Nome invertido
		RIGHT (Nome, CHARINDEX(' ', REVERSE(Nome))) AS [Ultimo Nome], -- ultimo nome
		CONCAT ('Bom', ' ', 'Dia') AS TextoConectado,
		'Bom dia ' + Nome AS Saudação, -- concatenação usando '+'
		SUBSTRING(Nome, 4, 8) AS Partenome
FROM Cliente
WHERE RIGHT(Nome,1) = 'o'
GO
*/

/*
--FUNÇÕES MATEMÁTICAS

SELECT	POWER(4,3) AS [Potência³],
		SQRT(15) AS [Raiz Quadrada²],
		PI() AS [π]
		GO

--ARREDONDAMENTO
SELECT	ROUND(PI(),2) AS [Arred - π 2],
		FLOOR(PI()) AS [Arred - π ↓],
		CEILING(PI()) AS [Arred - π ↑]
		GO
*/

--FUNÇÕES DE DATA
SELECT	GETDATE() AS DataAtual,
		DAY(GETDATE()) AS Dia,
		MONTH(GETDATE()) AS Mês,
		YEAR(GETDATE()) AS Ano,
		DATENAME(WEEKDAY, GETDATE()) AS NomeDia,
		DATENAME(MONTH, GETDATE()) AS NomeMês,
		DATEADD(DAY, 10, GETDATE()) AS 'Adicionando 10 Dias',
		DATEADD(MONTH, 10, GETDATE()) AS 'Adicionando 10 Meses',
		DATEADD(YEAR, 10, GETDATE()) AS 'Adicionando 10 Anos',
		DATEDIFF(DAY, '2002-02-25', GETDATE()) AS DifDias,
		DATEDIFF(MONTH, '2002-02-25', GETDATE()) AS Difmês,
		DATEDIFF(YEAR, '2002-02-25', GETDATE()) AS DifAnos
		GO
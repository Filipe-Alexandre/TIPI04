USE BD_OLIMPIADAS;

SELECT 
    *
FROM
    Atleta;
SELECT * FROM Medalha;
SELECT * FROM Modalidade;
SELECT * FROM Pais; 

-- Atividade 1: Listar todos os países
-- Descrição: Liste o nome de todos os países cadastrados no banco de dados.
SELECT Nome FROM Pais ORDER BY Nome;

-- Atividade 2: Mostrar todas as modalidades femininas
-- Descrição: Liste todas as modalidades cujo gênero seja "Feminino".
SELECT Nome FROM Modalidade
WHERE Genero = 'Feminino';

-- Atividade 3: Listar todos os atletas e os países que eles representam
-- Descrição: Faça uma consulta que mostre o nome de cada atleta junto com o país que ele representa.
SELECT 	Atleta.Nome,
		Pais.Nome
FROM Atleta
INNER JOIN Pais
ON Atleta.IdPais = Pais.IdPais
ORDER BY Pais.Nome;

-- Atividade 4: Mostrar todas as medalhas de um atleta específico
-- Descrição: Mostre todas as medalhas ganhas por um atleta específico, como "João da Silva".

SELECT 	atl.Nome,
		med.Tipo
FROM Atleta AS atl
INNER JOIN Medalha AS med
ON med.IdAtleta = atl.IdAtleta
WHERE atl.IdAtleta = 3;


-- Atividade 5: Contar o número total de medalhas conquistadas por cada país
-- Descrição: Faça uma consulta para contar o número total de medalhas que cada país conquistou.

SELECT 	-- md.Tipo,
		ps.Nome AS País,
        Count(*) AS 'Medalhas Conquistadas'
FROM Medalha AS md
INNER JOIN Pais AS ps
INNER JOIN Atleta AS at
ON ps.IdPais = at.IdPais
ON at.IdAtleta = md.IdAtleta
GROUP BY ps.Nome ORDER BY Count(*) DESC;


-- Atividade 6: Listar atletas que competem em modalidades masculinas
-- Descrição: Liste os nomes de todos os atletas que competem em modalidades cujo gênero é "Masculino".

SELECT 
		atl.Nome
FROM Atleta AS atl
INNER JOIN Modalidade AS mdl
ON atl.IdModalidade = mdl.IdModalidade
WHERE mdl.Genero LIKE 'Masc%';


-- Atividade 7: Encontrar países que conquistaram medalhas de ouro ou prata
-- Descrição**: Liste os países que conquistaram medalhas de **ouro** ou **prata**.

SELECT 	ps.Nome,
		md.Tipo
FROM Pais AS ps
INNER JOIN Atleta AS at ON at.IdPais = ps.IdPais
INNER JOIN Medalha AS md ON at.IdAtleta = md.IdAtleta
WHERE md.Tipo IN ('Prata','Ouro');


-- Atividade 8: Mostrar o número de medalhas conquistadas por modalidade
-- Descrição**: Conte quantas medalhas foram conquistadas em cada modalidade (sem distinguir entre ouro, prata ou bronze).

SELECT	Count(meda.idmedalha) AS Qtde,
		mdld.Nome
FROM Medalha AS meda
INNER JOIN Atleta AS atlt
ON atlt.IdAtleta = meda.IdAtleta
INNER JOIN Modalidade AS mdld
ON mdld.IdModalidade = atlt.IdModalidade
GROUP BY mdld.Nome;

-- Atividade 9: Listar países que conquistaram mais de 3 medalhas no total
-- Descrição**: Liste os países que conquistaram mais de 3 medalhas, independente do tipo de medalha.

 	
SELECT	ps.Nome AS País,
        Count(*) AS 'Medalhas Conquistadas'
FROM Medalha AS md
INNER JOIN Atleta AS at ON at.IdAtleta = md.IdAtleta
INNER JOIN Pais AS ps ON ps.IdPais = at.IdPais
GROUP BY ps.Nome
HAVING COUNT(*)> 3;

-- Atividade 10 (Quadro de Medalhas): Mostrar um quadro de medalhas
-- Descrição: Crie uma consulta que mostre o **quadro de medalhas** com a seguinte ordem:

-- 1. País com mais ouros no topo.
-- 2. Em caso de empate, o país com mais pratas.
-- 3. Se ainda houver empate, o país com mais bronzes.
-- A consulta deve mostrar o total de medalhas de ouro, prata e bronze para cada país.

SELECT 	ps.Nome,
		Count(CASE WHEN md.Tipo = 'Ouro' THEN 1 END) AS Ouro,
		Count(CASE WHEN md.Tipo = 'Prata' THEN 1 END) AS Prata,
		Count(CASE WHEN md.Tipo = 'Bronze' THEN 1 END) AS Bronze,
        Count(*) AS Total
FROM Pais AS ps
INNER JOIN Atleta AS at ON at.IdPais = ps.IdPais
INNER JOIN Medalha AS md ON md.IdAtleta = at.IdAtleta
GROUP BY ps.Nome
ORDER BY Ouro DESC, Prata DESC, Bronze DESC;














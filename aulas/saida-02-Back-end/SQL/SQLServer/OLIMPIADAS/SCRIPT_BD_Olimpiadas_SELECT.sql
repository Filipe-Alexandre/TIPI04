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
WHERE atl.IdAtleta = 3


-- Atividade 5: Contar o número total de medalhas conquistadas por cada país
-- Descrição: Faça uma consulta para contar o número total de medalhas que cada país conquistou.

SELECT 	md.Nome
		ps.Nome
FROM Medalha AS md
INNER JOIN Pais AS ps
ON 


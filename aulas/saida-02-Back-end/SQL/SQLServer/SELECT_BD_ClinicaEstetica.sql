-- 1. Selecione o id e nome dos tipos de servi�o em ordem alfab�tica
SELECT IdTipoServico AS [ID], Nome AS [Servi�os] FROM TipoServico ORDER BY Nome ASC

--------------------------------------------------------------------------------------------------

--2. Selecione o id, nome e pre�o dos servi�os da categoria Manicure
SELECT	IdServico AS [ID],
		Nome,
		Valor AS [Pre�o]
FROM Servico

--------------------------------------------------------------------------------------------------

-- 3. Selecione o id, nome do servi�o e nome do tipo de servi�o ordenados pelo tipo de servi�o
SELECT	TPSV.IdTipoServico AS [ID],
		TPSV.nome AS [Tipo de Servi�o],
		SERV.nome AS [Nome do Servi�o]
from TipoServico AS TPSV
INNER JOIN Servico AS SERV
ON TPSV.IdTipoServico = SERV.IdTipoServico
ORDER BY [Tipo de Servi�o]

--------------------------------------------------------------------------------------------------

-- 4. Selecione o id, nome do servi�o e nome do tipo de servi�os ativos e que o pre�o seja maior ou igual a 50 reais (obs: status = 1)
SELECT	SERV.IdTipoServico AS [ID],
		SERV.Nome,
		TPSV.Nome AS [Tipo de Servi�o]
FROM Servico AS [SERV]
INNER JOIN TipoServico AS [TPSV]
ON SERV.IdTipoServico = TPSV.IdTipoServico
WHERE SERV.Valor >= 50

--------------------------------------------------------------------------------------------------

-- 5. Selecione o id, nome, email e cpf de todos os usu�rios ativos (obs. status = 1)
	/* �nica tabela que tem cpf cadastrado � a de cliente */
SELECT	IdCliente AS [ID],
		Nome,
		Email,
		Cpf
FROM Cliente
WHERE Status = 1 

--------------------------------------------------------------------------------------------------

-- 6. Selecione o id, nome, email e cpf de todos os usu�rios inativos (obs. status = 0)
SELECT	IdCliente AS [ID],
		Nome,
		Email,
		Cpf
FROM Cliente
WHERE Status = 0

--------------------------------------------------------------------------------------------------

-- 7. Selecione o id, nome, email e cpf de todos usu�rios do tipo Operador

SELECT	TUS.Nome AS [Tipo Usu�rio],
		USU.idUsuario AS [ID],
		USU.Nome,
		USU.Email
FROM Usuario AS [USU]
INNER JOIN TipoUsuario AS [TUS]
ON TUS.IdTipoUsuario = USU.IdTipoUsuario
WHERE TUS.IdTipoUsuario = 2

--------------------------------------------------------------------------------------------------

-- 8. Selecione o id, nome e telefone de todos os clientes em ordem por id descrescente
SELECT	IdCliente,
		Nome,
		Telefone
FROM Cliente
ORDER BY IdCliente DESC

--------------------------------------------------------------------------------------------------

--	9. Selecione todos os dados de clientes que moram na cidade de S�o Paulo, Suzano ou Itaqua e que estejam ativos (status = 1)
SELECT * FROM CLIENTE
WHERE Cidade IN ('S�o Paulo','Suzano','Itaqua') AND Status = 1

--------------------------------------------------------------------------------------------------

-- 10. Selecione o id e nome dos servi�os do agendamento (de um dos agendamentos cadastrados)
SELECT	SERV.IdServico AS [ID],
		SERV.Nome AS [NOME],
		AGEN.IdAgendamento
FROM Servico AS [SERV]
INNER JOIN AgendamentoServico AS [AGSV]
ON SERV.IdServico = AGSV.IdServico
INNER JOIN Agendamento AS [AGEN]
ON AGSV.IdAgendamento = AGEN.IdAgendamento
WHERE SERV.Nome = 'Corte Feminino'

--------------------------------------------------------------------------------------------------

-- 11.Selecione o nome do cliente, status de agendamento, valor total, desconto, data de agendamento e nome do usu�rio de cadastro de todos os agendamentos.
SELECT	CLI.Nome,
		STT.Nome AS [Status],
		AGE.ValorTotal AS [Valor Total],
		AGE.ValorDesconto AS [Desconto],
		AGE.DataAgendamento AS [Data de Agendamento],
		USU.Nome AS [Usu�rio de Cadastro]
FROM Cliente AS [CLI]
INNER JOIN Agendamento AS [AGE]
ON CLI.IdCliente = AGE.IdCliente
INNER JOIN StatusAgendamento AS [STT]
ON AGE.IdStatusAgendamento = STT.IdStatusAgendamento
INNER JOIN Usuario AS [USU]
ON USU.IdUsuario = AGE.IdUsuarioCadastro

--------------------------------------------------------------------------------------------------

-- 12.Selecione o nome do cliente, data de agendamento, motivo de cancelamento, data e nome do usu�rio de altera��o de todos os agendamentos com status Cancelado

SELECT	CLI.Nome,
		AGE.DataAgendamento AS [Data de Agendamento],
		STT.Nome AS [Status],
		AGE.MotivoCancelamento AS [Motivo do Cancelamento],
		AGE.DataAlteracao AS [Data de altera��o],
		AGE.IdUsuarioAlteracao [Usu�rio de altera��o]
FROM Cliente AS [CLI]
INNER JOIN Agendamento AS [AGE]
ON CLI.IdCliente = AGE.IdCliente
INNER JOIN StatusAgendamento AS [STT]
ON AGE.IdStatusAgendamento = STT.IdStatusAgendamento
INNER JOIN Usuario AS [USU]
ON USU.IdUsuario = AGE.IdUsuarioCadastro
WHERE STT.Nome = 'Cancelado'

--------------------------------------------------------------------------------------------------

-- 13.Selecione a soma total de agendamentos diferentes de cancelados
SELECT COUNT(*) as [Agendamentos ativos] FROM AGENDAMENTO WHERE IdStatusAgendamento != 4

--------------------------------------------------------------------------------------------------

-- 14.Selecione a quantidade de agendamentos por Status de Agendamento

SELECT	COUNT(AGE.IdStatusAgendamento) AS [Quantidade de Agendamentos],
		STT.Nome as [Status de Agendamentos]
FROM Agendamento AS AGE
INNER JOIN StatusAgendamento AS [STT]
ON AGE.IdStatusAgendamento = STT.IdStatusAgendamento
group by STT.Nome
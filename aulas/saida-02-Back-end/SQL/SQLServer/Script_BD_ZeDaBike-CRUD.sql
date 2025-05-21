USE BD_ZeDaBike
GO

/*
VERIFICA SE INSERÇÕES DERAM CERTO
Seleciona o nome da tabela+Alt+F1: exibe a estrutura da tabela selecionada

	No SQL, os comandos CRUD são:
C - INSERT - Insere dados em uma tabela
R - SELECT - Seleciona dados de uma tabela
U - UPDATE - Altera dados de uma tabela
D - DELETE - Apaga dados de uma tabela
*/

-- SELECIONA/LISTA ALGO DA TABELA INTEIRA


-- Sintaxe: INSERT INTO TABELA (colunas) VALUES (valores das colunas)
--COLOCAR EM ORDEM CONFORME FOI INFORMADO ENTRE PARENTESES

-- INSIRINDO DADOS DE CLIENTE
SELECT * FROM Cliente

INSERT INTO Cliente (Nome, Cpf, Endereco, Nro, Complemento, Bairro, Cidade, Estado, Cep, Ddd, Telefone, Email)
	VALUES('Filipe Alexandre','388.474.598-00','Av. Pires do Rio','4711','702C','Itaquera','São Paulo','SP','08230-023','11','97796-2348','filipe.alexandre.360@gmail.com') --apostrofo para varchar

INSERT INTO Cliente (Nome, Cpf, Endereco, Nro, Complemento, Bairro, Cidade, Estado, Cep, Ddd, Telefone, Email)
	VALUES('Antonio Alexandre','496.140.614-72','R. Alexandre Davidenko','116','','Cidade Tiradentes','São Paulo','SP','08473-592','11','98425-3419','antonio.alexandre@gmail.com')

INSERT INTO Cliente (Nome, Cpf, Endereco, Nro, Complemento, Bairro, Cidade, Estado, Cep, Ddd, Telefone, Email)
	VALUES('Cleonide Mendes','123.456.789-00','R. Alexandre Davidenko',null,null,null,null,null,'São Paulo','11','98588-3625','cleonide.mendes@gmail.com')

INSERT INTO Cliente (Nome, Cpf, Endereco, Ddd,Telefone, Email)
	VALUES ('Ana Caroline','987.654.321-00','Tv. André Molina Henriques','11','98623-5455','ana.carol@hotmail.com')

INSERT INTO Cliente (Nome, Cpf, Endereco, Ddd,Telefone, Email)
	VALUES ('Jessica Rodrigues','234.633.768-80','Av. Pires do Rio','11','98889-6382','jessih_rogih@hotmail.com')

--INSERINDO CHAMADO
	SELECT * FROM Chamado
INSERT INTO Chamado (IdCliente,Endereco,Nro,Complemento,Bairro,Cidade,Uf,Cep,Descricao,DataHora,Situação)
	VALUES (1,'Avenida Paulista', '1499','','Jd.Paulista', 'São Paulo','SP','12345-789','Explodiu','2025-05-20 06:40:00','Aguardando')

INSERT INTO Chamado (IdCliente,Endereco,Nro,Complemento,Bairro,Cidade,Uf,Cep,Descricao,DataHora,Situação)
	VALUES (1,'Av. Otto Baumgart', '500','','Vl. Guilherme', 'São Paulo','SP','12345-789','Explodiu',GETDATE(),'Aguardando')

	-- INSERINDO UM CHAMADO COM IDCLIENTE INVÁLIDO

INSERT INTO Chamado (IdCliente,Endereco,Nro,Complemento,Bairro,Cidade,Uf,Cep,Descricao,DataHora,Situação)
	VALUES (4,'Av. Otto Baumgart', '500','Center Norte','Vl. Guilherme', 'São Paulo','SP','12345-789','Explodiu',GETDATE(),'Aguardando')

--INSERINDO USUÁRIO
	SELECT * FROM Usuario
INSERT INTO Usuario (Nome,Email,Cpf,Ddd,Telefone,Senha,Bloqueado,TipoUsuario)
	VALUES ('José Ramalho', 'ze.da.bike@bike.com','456.789.123-21','11','97894-6548','12345678',0,'Admin')



--INSERINDO MECANICO E FICHA MÉDICA
SELECT * FROM Mecanico
INSERT INTO Mecanico(Nome,Email,Cpf,Ddd,Telefone,Senha,Bloqueado,IdUsuarioCadastro)
	VALUES ('José Maria', 'jose.maria@bike.com','951.787.654-99','11','94512-5421','98765432',0,2)

SELECT * FROM FichaMedica
INSERT INTO FichaMedica(IdMecanico,Peso,Altura,TipoSanguineo,EhAlergico)
	VALUES (4,'75.4','1.86','AB+',0)

INSERT INTO Mecanico(Nome,Email,Cpf,Ddd,Telefone,Senha,Bloqueado,IdUsuarioCadastro)
	VALUES ('Maria Jose', 'maria.jose@bike.com','478.896.632-21','11','99638-7412','12121212',0,2)

INSERT INTO FichaMedica(IdMecanico,Peso,Altura,TipoSanguineo,EhAlergico)
	VALUES (5,'60.5','1.72','A+',0)

INSERT INTO Mecanico(Nome,Email,Cpf,Ddd,Telefone,Senha,Bloqueado,IdUsuarioCadastro)
	VALUES ('João Maria', 'joao.maria@bike.com','154.785.985-65','11','99875-5123','78451296',0,2)

INSERT INTO FichaMedica(IdMecanico,Peso,Altura,TipoSanguineo,EhAlergico)
	VALUES (6,'65','1.78','O-',1)

	--INSERIDO CHAMADO_MECANICO

INSERT INTO ChamadoMecanico(IdChamado,IdMecanico) VALUES(1,4)
INSERT INTO ChamadoMecanico(IdChamado,IdMecanico) VALUES(2,5)
INSERT INTO ChamadoMecanico(IdChamado,IdMecanico) VALUES(2,6)

SELECT * FROM Cliente
SELECT * FROM Chamado
SELECT * FROM Mecanico
SELECT * FROM FichaMedica
SELECT * FROM ChamadoMecanico

--ALTERANDO DADOS MA TABELA (UPDATE)
--WHERE = RESTRIÇÃO DOS DADOS (FILTRO)

UPDATE Cliente SET
	Telefone = '97796-2348',
	Email = 'filipe.alexandre72@outlook.com'
	WHERE IdCliente = 1
SELECT * FROM Cliente

UPDATE Cliente SET
	Telefone = '97796-2348',
	Email = 'filipe.alexandre72@outlook.com'
WHERE IdCliente = 1 --mudar dados do idCliente 1
SELECT * FROM Cliente

UPDATE Cliente SET
	Estado = 'SP'
WHERE IdCliente > 2 --mudar todos que forem acima do id 2
SELECT * FROM Cliente

UPDATE Cliente SET
	Cep = '08473-623'
WHERE IdCliente = 7 -- mudar dados do id 7 da tabela
SELECT * FROM Cliente

UPDATE Chamado SET
	DataHora = GETDATE()
WHERE Endereco = 'Avenida Paulista' --mudar apenas a tebela que o endereço é esse
SELECT * FROM Chamado

SELECT * FROM Cliente

UPDATE Cliente SET
	Nome = 'Jonathan Whesley',
	Cpf = '741.852.963.41',
	Endereco =	'R. Inácio Monteiro',
	Nro = '17',
	Complemento = null,
	Bairro = 'Vl. Yolanda 2',
	Cep = '12365-985',
	Telefone = '94564-6542',
	Email = 'jow.w@gmail.com'
WHERE IdCliente = 2 --mudar apenas onde o id é 2
SELECT * FROM Cliente


--APAGFANDO DADOS DA TABELA (DELETE)
DELETE FROM Cliente
WHERE IdCliente = 2
SELECT * FROM Cliente

/*
Aqui é um exemplo de tentar deletar um cliente que tem um chamado dependendo dele, assim ele da erro e não executa a ação
DELETE FROM Cliente
WHERE IdCliente = 1
SELECT * FROM Cliente
*/

-- BOTÃO DIREITO E EDITAR 200 LINHAS ACIMA PARA TER UMA FERRAMENTA VISUAL PARA EDITAR OS DADOS
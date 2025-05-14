--DDL -> Data Definition Language

--CRIANDO BANCO DE DADOS | ATIVA O COMANDO COM [F5]
CREATE DATABASE BD_ZeDaBike
GO

--SELECIONA O BANCO DE DADOS | sempre sair do banco master
USE BD_ZeDaBike
GO
--CRIANDO A TABELA CLIENTE | se o nome da tabela tiver espaço, colocar entre colchetes, mas não é uma boa pratica
CREATE TABLE Cliente
(
-- NOME DO CAMPO | TIPO | INDICAÇÃO DE CHAVE PRIMARIA
-- Identity = autonumeração do campo	
-- Not Null = Campo obrigatório/ o padrão é null = não obrigatorio
	IdCliente	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(100)NOT NULL,
	Cpf			VARCHAR(14) NOT NULL,
	Endereco	VARCHAR(100) NOT NULL,
	Nro			VARCHAR(6) NULL,
	Complemento VARCHAR(20) NULL,
	Bairro		VARCHAR(50) NULL,
	Cidade		VARCHAR(70) NULL,
	Uf			VARCHAR(2) NULL,
	Cep			VARCHAR(9) NULL,
	Ddd			VARCHAR(2) NOT NULL,
	Telefone	VARCHAR(10) NOT NULL,
	Email		VARCHAR(100) NOT NULL
)
GO

--CRIANDO A TABELA CHAMADO
CREATE TABLE Chamado
(
	IdChamado	INT PRIMARY KEY IDENTITY,
	IdCliente	INT FOREIGN KEY REFERENCES Cliente(IdCliente),
	Endereco	VARCHAR(100) NOT NULL,
	Nro			VARCHAR(6) NOT NULL,
	Complemento VARCHAR(20) NULL,
	Bairro		VARCHAR(50) NOT NULL,
	Cidade		VARCHAR(70) NOT NULL,
	Uf			VARCHAR(2) NOT NULL,
	Cep			VARCHAR(9) NOT NULL,
	Latitude	DECIMAL(10,5) NOT NULL,
	Longitude	DECIMAL(10,5) NOT NULL,
	Descricao	VARCHAR(500) NULL,
	DataHora	DATETIME NOT NULL,
	Situação	VARCHAR(10) NOT NULL,
	MotivoRecusa VARCHAR(200) NULL
)
GO

-- CRIANDO TABELA DO USUÁRIO
CREATE TABLE Usuario
(
	IdUsuario	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(100)	NOT NULL,
	Email		VARCHAR(100) NOT NULL,
	Cpf			VARCHAR(14) NOT NULL,
	Ddd			VARCHAR(2) NOT NULL,
	Telefone	VARCHAR(10) NOT NULL,
	Senha		VARCHAR(8) NOT NULL,
	Bloqueado	BIT NOT NULL,
	TipoUsuario	VARCHAR(10) NOT NULL,
)
GO

-- CRIANDO TABELA DO MECANICO
CREATE TABLE Mecanico
(
	IdMecanico	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(100)	NOT NULL,
	Email		VARCHAR(100) NOT NULL,
	Cpf			VARCHAR(14) NOT NULL,
	Ddd			VARCHAR(2) NOT NULL,
	Telefone	VARCHAR(10) NOT NULL,
	Senha		VARCHAR(8) NOT NULL,
	Bloqueado	BIT NOT NULL,
	IdUsuarioCadastro INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdUsuarioAlteracao INT FOREIGN KEY REFERENCES Usuario(IdUsuario) 
)
GO

-- CRIANDO TABELA DO CHAMADOMECANICO
CREATE TABLE ChamadoMecanico
(
	IdUsuarioCadastro INT FOREIGN KEY REFERENCES Chamado(IdChamado),
	IdUsuarioAlteracao INT FOREIGN KEY REFERENCES Mecanico(IdMecanico) 
)
GO

-- CRIANDO TABELA DA FICHA MEDICA
CREATE TABLE FichaMedica
(
	IdFichaMedica INT PRIMARY KEY IDENTITY,
	IdMecanico INT NOT NULL FOREIGN KEY REFERENCES Mecanico(IdMecanico) UNIQUE,
	Peso		DECIMAL(10,2) NOT NULL,
	Altura		DECIMAL(10,2) NOT NULL,
	TipoSanguineo VARCHAR(3) NOT NULL,
	EhAlergico BIT NOT NULL,
)
GO


--ALTER TABLE (edita o nome)

--DROP TABLE (apaga) | Só é possivel apagarse na tabela não houver nenhum dependente

--APAGAR BANCO DE DADOS

--DROP DATABASE

--USE Master
--DROP DATABASE BD_ZeDaBike





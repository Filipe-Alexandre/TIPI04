USE BD_PALMIRINHA
GO

CREATE TABLE GrauDificuldade
(
	IdGrauDificuldade INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(15) NOT NULL
)
GO

CREATE TABLE Receita
(
	IdReceita INT PRIMARY KEY IDENTITY,
	IdGrauDificuldade INT NOT NULL,
	FOREIGN KEY (IdGrauDificuldade) REFERENCES GrauDificuldade(IdGrauDificuldade),
	Nome VARCHAR(50) NOT NULL,
	TempoPreparo INT NOT NULL,
	ModoPreparo VARCHAR(8000),
	QtdePorcoes TINYINT
)
GO

CREATE TABLE Ingrediente
(
	IdIngrediente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (50),
	PrecoSugerido MONEY
)
GO

CREATE TABLE ReceitaIngrediente
(
	IdReceitaIngrediente INT PRIMARY KEY IDENTITY,
	IdReceita INT NOT NULL,
	FOREIGN KEY (IdReceita) REFERENCES Receita(IdReceita),
	IdIngrediente INT NOT NULL,
	FOREIGN KEY (IdIngrediente) REFERENCES Ingrediente(IdIngrediente)
)
GO

CREATE TABLE Loja
(
	IdLoja INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (50),
	Logradouro VARCHAR (100),
	Numero VARCHAR (10),
	Complemento VARCHAR(50),
	Bairro VARCHAR(50),
	Cidade VARCHAR(50),
	Uf VARCHAR(2),
	Cep VARCHAR(9),
	Cnpj VARCHAR(18),
	Telefone VARCHAR(15)
)
GO

CREATE TABLE IngredienteLoja
(
	IdIngredienteLoja INT PRIMARY KEY IDENTITY,
	IdIngrediente INT NOT NULL,
	FOREIGN KEY (IdIngrediente) REFERENCES Ingrediente(IdIngrediente),
	IdLoja INT NOT NULL,
	FOREIGN KEY (IdLoja) REFERENCES Loja(IdLoja)
)
GO

CREATE TABLE Usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (50),
	Email VARCHAR (100)
)
GO

CREATE TABLE UsuarioAcesso
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
	Login VARCHAR (20),
	Senha VARCHAR (50),
	Bloqueado BIT
)
GO

CREATE TABLE Avaliacao
(
	IdAvaliacao INT PRIMARY KEY IDENTITY,
	IdUsuario INT NOT NULL,
	FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
	IdReceita INT NOT NULL,
	FOREIGN KEY (IdReceita) REFERENCES Receita(IdReceita),
	Nota TINYINT,
	Comentario VARCHAR(1000),
	Data DATE
)
GO


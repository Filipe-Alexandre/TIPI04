CREATE DATABASE BD_Produtos

USE BD_Produtos

 --CRIAÇÃO DAS TABELAS

CREATE TABLE Departamento
(
	IdDepartamento INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(100)
)
GO

CREATE TABLE Categoria
(
	IdCategoria INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50),
	IdDepartamento INT FOREIGN KEY REFERENCES Departamento(IdDepartamento),
)
GO

CREATE TABLE Produto
(
	IdProduto INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (50),
	Descricao VARCHAR(800),
	Estoque INT,
	EhLancamento BIT,
	Preco MONEY
)
GO

CREATE TABLE ProdutoCategoria
(
	IdProduto INT FOREIGN KEY REFERENCES Produto(IdProduto),
	IdCategoria INT FOREIGN KEY REFERENCES Categoria(IdCategoria),
)
GO

-- --------------------------------------------------------- --

 --INSERINDO DADOS EM CADA TABELA

INSERT INTO Departamento (Nome)
	VALUES ('Técnologia')
INSERT INTO Departamento (Nome)
	VALUES ('Vestuário')
INSERT INTO Departamento (Nome)
	VALUES ('Alimentação')
INSERT INTO Departamento (Nome)
	VALUES ('Esportes')
INSERT INTO Departamento (Nome)
	VALUES ('Móveis')
    
    /*
    -- FORMA RESUMIDA DE FAZER INSERT PARA ENXUGAR CÓDIGO
    INSERT INTO Departamento (Nome)
		VALUES
        ('Tecnologia'),
        ('Vestuário'),
        ('Alimentação'),
        ('Esportes'),
        ('Móveis')
    */
SELECT * FROM Departamento


INSERT INTO Categoria (Nome, IdDepartamento)
	VALUES ('Smartphone', 1)
INSERT INTO Categoria (Nome, IdDepartamento)
	VALUES ('Notebooks', 1)
INSERT INTO Categoria (Nome, IdDepartamento)
	VALUES ('Televisores', 1)
INSERT INTO Categoria (Nome, IdDepartamento)
	VALUES ('Roupas Esportivas', 2)
INSERT INTO Categoria (Nome, IdDepartamento)
	VALUES ('Calçados', 2)
INSERT INTO Categoria (Nome, IdDepartamento)
	VALUES ('Alimentos Saudáveis', 3)
INSERT INTO Categoria (Nome, IdDepartamento)
	VALUES ('Laticínios', 3)
INSERT INTO Categoria (Nome, IdDepartamento)
	VALUES ('Futebol', 4)
INSERT INTO Categoria (Nome, IdDepartamento)
	VALUES ('Bicicletas', 4)
INSERT INTO Categoria (Nome, IdDepartamento)
	VALUES ('Cadeiras', 5)
SELECT * FROM Categoria


INSERT INTO Produto(Nome, Descricao, Estoque, EhLancamento,	Preco)
	VALUES ('IPhone 14 Pro', 'Smartphone de ultima geração com câmera 48MP', 50, 1, 9999)
INSERT INTO Produto(Nome, Descricao, Estoque, EhLancamento,	Preco)
	VALUES ('MacBook Pro', 'Notebook potente com chip M1', 30, 1, 14999)
INSERT INTO Produto(Nome, Descricao, Estoque, EhLancamento,	Preco)
	VALUES ('Smart TV 55" 4K', 'Televisor smart com resolução 4K', 20, 0, 4499)
INSERT INTO Produto(Nome, Descricao, Estoque, EhLancamento,	Preco)
	VALUES ('Camiseta de Futebol', 'Camiseta oficial para prática de esportes', 150, 0, 199)
INSERT INTO Produto(Nome, Descricao, Estoque, EhLancamento,	Preco)
	VALUES ('Tênis de Corrida', 'Tênis leve e resistente para corrida', 80, 1, 499)
INSERT INTO Produto(Nome, Descricao, Estoque, EhLancamento,	Preco)
	VALUES ('Leite Integral', 'Leite fresco integral de alta qualidade', 200, 0, 5.99)
INSERT INTO Produto(Nome, Descricao, Estoque, EhLancamento,	Preco)
	VALUES ('Bicicleta Montain', 'Bicicleta resistente para trilhas', 15, 0, 2999)
INSERT INTO Produto(Nome, Descricao, Estoque, EhLancamento,	Preco)
	VALUES ('Cadeira de Escritório', 'Cadeira ergonômica com ajuste de altura', 10, 1, 899)
SELECT * FROM Produto


INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(1,1)
INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(1,2)
INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(1,3)
INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(1,4)
INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(1,5)

INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(2,1)
INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(2,2)
INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(2,3)

INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(3,2)
INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(3,3)
INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(3,4)

INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(4,4)
INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(4,8)

INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(5,4)
INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(5,5)

INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(6,7)

INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(7,9)

INSERT INTO ProdutoCategoria(IdProduto, IdCategoria) VALUES(8,10)

/*
	INSERT INTO ProdutoCategoria(IdProduto, IdCategoria)
	VALUES
		(1,1),
		(1,2),
		(1,3),
		(1,4),
		(1,5),
		(2,1),
		(2,2),
		(2,3),
		(3,2),
		(3,3),
		(3,4),
		(4,4),
		(4,8),
		(5,4),
		(5,5),
		(6,7),
		(7,9),
		(8,10)
*/

SELECT * FROM ProdutoCategoria


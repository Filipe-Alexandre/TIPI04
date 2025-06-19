-- CREATE DATABASE BD_Olimpiadas;

-- USE BD_Olimpiadas;

-- CRIAÇÃO DAS TABELAS

CREATE TABLE Pais
(
	IdPais INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Modalidade
(
	IdModalidade INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nome VARCHAR(50) NOT NULL,
	Genero VARCHAR(10) NOT NULL
);

CREATE TABLE Atleta
(
	IdAtleta INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nome VARCHAR(60) NOT NULL,
	DtNasc DATE NOT NULL,
	IdPais INT NOT NULL,
    IdModalidade INT NOT NULL,
    FOREIGN KEY (IdPais) REFERENCES Pais(IdPais),
	FOREIGN KEY (IdModalidade) REFERENCES Modalidade(IdModalidade)
);


CREATE TABLE Medalha
(
 IdMedalha INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
 Tipo VARCHAR(6) NOT NULL,
 IdAtleta INT NOT NULL,
 DtConquista DATE NOT NULL,
 FOREIGN KEY (IdAtleta) REFERENCES Atleta(IdAtleta)
);

-- INSERTS

INSERT INTO Pais (Nome)
	VALUES
    ('Brasil'),
    ('Japão'),
	('Canadá'),
    ('Coreia'),
    ('Espanha');
    
INSERT INTO Modalidade (Nome, Genero)
	VALUES
    ('Futebol',1),
	('Futebol',2),
	('Volei',1),
	('Volei',2),
	('Skate',1),
	('Skate',2),
	('Basquete',1),
	('Basquete',2),
	('Golf',1),
	('Golf',2),
	('Tenis',1),
	('Tenis',2),
	('Surf',1),
	('Surf',2),
	('Judô',1),
	('Judô',2);
    
INSERT INTO Atleta (Nome, DtNasc, IdPais, IdModalidade)
	VALUES
    ('Neymar Jr.', '1992-02-05', 1, 2),
    ('Marta Vieira da Silva', '1986-02-19', 1, 1),
    ('Raíssa Leal', '2008-01-04', 1, 5),
    ('Yuto Horigome', '1999-01-30', 2, 6),
    ('Rafaela Silva', '1992-04-24', 1, 15),
    ('Kosuke Kitajima', '1982-08-22', 2, 16),
    ('Pau Gasol', '1980-07-06', 5, 8),
    ('Serena Williams', '1981-09-26', 3, 11),
    ('Hwang Yeong-sil', '2002-03-15', 4, 13),
    ('Tiger Woods', '1975-12-30', 3, 10);
    
    
INSERT INTO Medalha (Tipo, IdAtleta, DtConquista)
	VALUES
    ('Ouro','1','2016-08-20'),
	('Prata','2','2008-08-21'),
	('Prata','3','2021-07-25'),
	('Ouro','4','2021-07-25'),
	('Ouro','5','2016-08-08'),
	('Bronze','6','2004-08-21'),
	('Bronze','7','2016-08-21'),
	('Ouro','8','2012-08-14'),
	('Bronze','9','2004-08-20'),
	('Prata','10','2012-08-20');
    
    select * from medalha
            
    
    
    




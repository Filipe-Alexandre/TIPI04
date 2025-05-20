CREATE DATABASE BD_JunkFood;
GO

USE BD_JunkFood;
GO

CREATE TABLE Usuario (
   IdUsuario INT NOT NULL PRIMARY KEY,
   NomeUsuario VARCHAR(50) NOT NULL,
   PermissaoDeCadastro BIT NOT NULL
);

CREATE TABLE Pagamento (
   IdPagamento INT NOT NULL PRIMARY KEY,
   FormaDePagamento VARCHAR(10) NOT NULL
);

CREATE TABLE Cliente (
   IdCliente INT NOT NULL PRIMARY KEY,
   Nome VARCHAR(50) NOT NULL,
   Idade INT NOT NULL,
   Cpf VARCHAR(14) NOT NULL,
   Email VARCHAR(100) NOT NULL,
   Telefone VARCHAR(10) NOT NULL,
   Ddd VARCHAR(2) NOT NULL,
   Senha VARCHAR(8) NOT NULL
);

CREATE TABLE Endereco (
   IdEndereco INT NOT NULL PRIMARY KEY,
   Endereco VARCHAR(100) NOT NULL,
   Nro VARCHAR(6) NOT NULL,
   Complemento VARCHAR(20),
   Cep VARCHAR(9) NOT NULL,
   Uf VARCHAR(2) NOT NULL,
   Bairro VARCHAR(50) NOT NULL,
   Estado VARCHAR(22) NOT NULL,
   IdCliente INT NOT NULL,
   FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
);

CREATE TABLE Restaurante (
   IdRestaurante INT NOT NULL PRIMARY KEY,
   NomeRestaurante VARCHAR(50) NOT NULL,
   CnpjRestaurante VARCHAR(18) NOT NULL,
   IdUsuario INT NOT NULL,
   IdPagamento INT NOT NULL,
   FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
   FOREIGN KEY (IdPagamento) REFERENCES Pagamento(IdPagamento)
);

CREATE TABLE Categoria (
   IdCategoria INT NOT NULL PRIMARY KEY,
   NomeCategoria VARCHAR(20) NOT NULL,
   IdRestaurante INT NOT NULL,
   FOREIGN KEY (IdRestaurante) REFERENCES Restaurante(IdRestaurante)
);

CREATE TABLE Prato (
   IdPrato INT NOT NULL PRIMARY KEY,
   NomePrato VARCHAR(20) NOT NULL,
   DescricaoPrato VARCHAR(150) NOT NULL,
   Preco INT NOT NULL,
   IdCategoria INT NOT NULL,
   FOREIGN KEY (IdCategoria) REFERENCES Categoria(IdCategoria)
);

CREATE TABLE Pedido (
   IdPedido INT NOT NULL PRIMARY KEY,
   Valor INT NOT NULL,
   IdCliente INT NOT NULL,
   IdRestaurante INT NOT NULL,
   IdEndereco INT NOT NULL,
   IdPagamento INT NOT NULL,
   FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
   FOREIGN KEY (IdRestaurante) REFERENCES Restaurante(IdRestaurante),
   FOREIGN KEY (IdEndereco) REFERENCES Endereco(IdEndereco),
   FOREIGN KEY (IdPagamento) REFERENCES Pagamento(IdPagamento)
);

CREATE TABLE PedidoPrato (
   IdPrato INT NOT NULL,
   IdPedido INT NOT NULL,
   PRIMARY KEY (IdPrato, IdPedido),
   FOREIGN KEY (IdPrato) REFERENCES Prato(IdPrato),
   FOREIGN KEY (IdPedido) REFERENCES Pedido(IdPedido)
);

CREATE TABLE AvaliacaoPedido (
   IdPedido INT NOT NULL PRIMARY KEY,
   Justificativa VARCHAR(200) NOT NULL,
   Nota VARCHAR(5) NOT NULL,
   FOREIGN KEY (IdPedido) REFERENCES Pedido(IdPedido)
);

CREATE TABLE Entregador (
   IdEntregador INT NOT NULL PRIMARY KEY,
   Nome VARCHAR(50) NOT NULL,
   Idade INT NOT NULL,
   Ddd VARCHAR(2) NOT NULL,
   Telefone VARCHAR(10) NOT NULL,
   Email VARCHAR(100) NOT NULL,
   Cpf VARCHAR(14) NOT NULL,
   Cnh VARCHAR(11) NOT NULL,
   IdUsuario INT NOT NULL,
   IdPedido INT NOT NULL,
   FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
   FOREIGN KEY (IdPedido) REFERENCES Pedido(IdPedido)
);

CREATE TABLE Veiculo (
   IdVeiculo INT NOT NULL PRIMARY KEY,
   Modelo VARCHAR(20) NOT NULL,
   Ano VARCHAR(4) NOT NULL,
   Cor VARCHAR(10) NOT NULL,
   Placa VARCHAR(8) NOT NULL,
   IdEntregador INT NOT NULL,
   FOREIGN KEY (IdEntregador) REFERENCES Entregador(IdEntregador)
);

CREATE TABLE ClientePagamento (
   IdClientePagamento INT NOT NULL PRIMARY KEY,
   IdCliente INT NOT NULL,
   IdPagamento INT NOT NULL,
   NomeNoCartao VARCHAR(20) NOT NULL,
   NumeroCartao VARCHAR(16) NOT NULL,
   Cvv VARCHAR(3) NOT NULL,
   Validade VARCHAR(5) NOT NULL,
   ChavePix INT NOT NULL,
   FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
   FOREIGN KEY (IdPagamento) REFERENCES Pagamento(IdPagamento)
);

create database fotografia;
use fotografia;
CREATE TABLE Usuário (
Login_Usuario VARCHAR(10),
Data_Início DATETIME,
Nome_completo VARCHAR(45),
Tipo_usuario VARCHAR(45),
PRIMARY KEY(Login_Usuario)
);

CREATE TABLE Empresa (
Nome_Fantasia VARCHAR(45),
Login_empresa VARCHAR(10),
Data_Início DATETIME,
Razao_Social VARCHAR(45),
PRIMARY KEY(Login_empresa)
);

CREATE TABLE Produtos (
codigo_produto integer primary key,
Login_empresa varchar(10),
FOREIGN KEY(Login_empresa) REFERENCES Empresa (Login_empresa)
);

CREATE TABLE Endereço_usuário (
Endereço_PK INTEGER PRIMARY KEY,
Login_Usuario VARCHAR(10),
Cidade VARCHAR(45),
Numero INTEGER,
Bairro VARCHAR(45),
Rua VARCHAR(45),
CEP INTEGER,
Estado VARCHAR(2),
FOREIGN KEY(Login_Usuario) REFERENCES Usuário (Login_Usuario)
);

CREATE TABLE Endereço_empresa (
Endereço_PK INTEGER PRIMARY KEY,
Login_empresa VARCHAR(10),
Cidade VARCHAR(45),
Numero INTEGER,
Bairro VARCHAR(45),
Rua VARCHAR(45),
CEP INTEGER,
Estado VARCHAR(2),
FOREIGN KEY(Login_empresa) REFERENCES Empresa (Login_empresa)
);

CREATE TABLE Língua (
Língua_PK INTEGER PRIMARY KEY,
Descricao_lingua VARCHAR(10),
cod_lingua VARCHAR(10)
);

CREATE TABLE Contatos_usuário (
Contatos_PK INTEGER PRIMARY KEY,
Login_Usuario VARCHAR(10),
codigo_contato VARCHAR(10),
Descricao_contato VARCHAR(10),
codigo_tipo VARCHAR(10),
nome_tipo VARCHAR(10),
Login_FK VARCHAR(35),
FOREIGN KEY(Login_Usuario) REFERENCES Usuário (Login_Usuario)
);

CREATE TABLE Contatos_Empresa (
Contatos_PK INTEGER PRIMARY KEY,
Login_empresa VARCHAR(10),
codigo_contato VARCHAR(10),
Descricao_contato VARCHAR(10),
codigo_tipo VARCHAR(10),
nome_tipo VARCHAR(10),
Login_FK VARCHAR(35),
FOREIGN KEY(Login_empresa) REFERENCES Empresa (Login_empresa)
);

CREATE TABLE Books (
Books_PK INTEGER PRIMARY KEY,
codigo_produto integer,
Codigo_book VARCHAR(10),
Descricao_book VARCHAR(10),
FOREIGN KEY(codigo_produto) REFERENCES Produtos (codigo_produto)
);

CREATE TABLE Itens (
codigo_item INTEGER PRIMARY KEY,
codigo_produto integer,
Descricao_item VARCHAR(10),
FOREIGN KEY(codigo_produto) REFERENCES Produtos (codigo_produto)
);

CREATE TABLE usuario_empresa (
Avaliacao_Usuário INTEGER,
Login_Usuario VARCHAR(10),
Login_empresa VARCHAR(10),
FOREIGN KEY(Login_empresa) REFERENCES Empresa (Login_empresa),
FOREIGN KEY(Login_Usuario) REFERENCES Usuário (Login_Usuario)
);

CREATE TABLE empresa_usuario (
Avaliacao_empresa INTEGER,
Login_Usuario VARCHAR(10),
Login_empresa VARCHAR(10),
FOREIGN KEY(Login_empresa) REFERENCES Empresa (Login_empresa),
FOREIGN KEY(Login_Usuario) REFERENCES Usuário (Login_Usuario)
);



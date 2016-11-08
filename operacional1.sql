CREATE DATABASE IF NOT EXISTS fotografia;
USE fotografia; 

CREATE TABLE usuario_empresa (
Avaliacao INTEGER,
id_pessoa_us INTEGER,
id_pessoa_emp INTEGER
);

CREATE TABLE empresa_usuario (
Avaliacao INTEGER,
id_pessoa_us INTEGER,
id_pessoa_emp INTEGER
);

CREATE TABLE usuario (
Nome_completo VARCHAR(45),
id_pessoa INTEGER PRIMARY KEY
);

CREATE TABLE book (
Book INTEGER AUTO_INCREMENT PRIMARY KEY,
descricao_book VARCHAR(45),
codigo_book INTEGER,
cod_produto INTEGER
);

CREATE TABLE itens (
Itens INTEGER AUTO_INCREMENT PRIMARY KEY,
Codigo_item INTEGER,
Descricao_item VARCHAR(45),
cod_produto INTEGER
);

CREATE TABLE endereco (
Endereco INTEGER AUTO_INCREMENT PRIMARY KEY,
Cidade VARCHAR(45),
Numero INTEGER,
CEP INTEGER,
Bairro VARCHAR(45),
Rua VARCHAR(45),
Estado VARCHAR(45),
id_pessoa INTEGER
);

CREATE TABLE contato (
descricao VARCHAR(45),
id_contato INTEGER AUTO_INCREMENT PRIMARY KEY,
id_pessoa INTEGER,
id_tipo_contato INTEGER
);

CREATE TABLE tipo_contato (
id_tipo_contato INTEGER AUTO_INCREMENT PRIMARY KEY,
descricao_tipo VARCHAR(45)
);

CREATE TABLE apresenta (
id_pessoa INTEGER,
cod_produto integer
);

CREATE TABLE escolhida (
cod_lingua INTEGER,
id_pessoa INTEGER,
FOREIGN KEY(id_pessoa) REFERENCES usuario (id_pessoa)
);

CREATE TABLE lingua (
Descricao_lingua VARCHAR(45),
cod_lingua INTEGER AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE produtos (
cod_produto INTEGER AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE login_pessoa (
Senha VARCHAR(45),
Login VARCHAR(45),
id_pessoa INTEGER AUTO_INCREMENT PRIMARY KEY,
data_inicio DATE,
tipo_pessoa VARCHAR(45)
);

CREATE TABLE empresa (
Razao_Social VARCHAR(45),
Nome_Fantasia VARCHAR(45),
id_pessoa INTEGER PRIMARY KEY
);

ALTER TABLE usuario_empresa ADD FOREIGN KEY(id_pessoa_us) REFERENCES usuario (id_pessoa);
ALTER TABLE usuario_empresa ADD FOREIGN KEY(id_pessoa_emp) REFERENCES empresa (id_pessoa);
ALTER TABLE empresa_usuario ADD FOREIGN KEY(id_pessoa_us) REFERENCES usuario (id_pessoa);
ALTER TABLE empresa_usuario ADD FOREIGN KEY(id_pessoa_emp) REFERENCES empresa (id_pessoa);
ALTER TABLE book ADD FOREIGN KEY(cod_produto) REFERENCES produtos (cod_produto);
ALTER TABLE itens ADD FOREIGN KEY(cod_produto) REFERENCES produtos (cod_produto);
ALTER TABLE endereco ADD FOREIGN KEY(id_pessoa) REFERENCES login_pessoa (id_pessoa);
ALTER TABLE contato ADD FOREIGN KEY(id_pessoa) REFERENCES login_pessoa (id_pessoa);
ALTER TABLE contato ADD FOREIGN KEY(id_tipo_contato) REFERENCES tipo_contato (id_tipo_contato);
ALTER TABLE apresenta ADD FOREIGN KEY(id_pessoa) REFERENCES empresa (id_pessoa);
ALTER TABLE apresenta ADD FOREIGN KEY(cod_produto) REFERENCES produtos (cod_produto);
ALTER TABLE escolhida ADD FOREIGN KEY(cod_lingua) REFERENCES lingua (cod_lingua);

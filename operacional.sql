CREATE DATABASE IF NOT EXISTS fotografia;
USE fotografia; 

CREATE TABLE usuario_empresa (
Avaliacao VARCHAR(10),
id_pessoa_us VARCHAR(10),
id_pessoa_emp VARCHAR(10)
);

CREATE TABLE empresa_usuario (
Avaliacao VARCHAR(10),
id_pessoa_us VARCHAR(10),
id_pessoa_emp VARCHAR(10)
);

CREATE TABLE usuario (
Nome_completo VARCHAR(45),
id_pessoa VARCHAR(10) PRIMARY KEY
);

CREATE TABLE book (
Book INTEGER PRIMARY KEY,
descricao_book VARCHAR(10),
codigo_book INTEGER,
cod_produto VARCHAR(10)
);

CREATE TABLE itens (
Itens INTEGER PRIMARY KEY,
Codigo_item INTEGER,
Descricao_item VARCHAR(10),
cod_produto VARCHAR(10)
);

CREATE TABLE endereco (
Endereço INTEGER PRIMARY KEY,
Cidade VARCHAR(10),
Numero VARCHAR(10),
CEP VARCHAR(10),
Bairro VARCHAR(10),
Rua VARCHAR(10),
Estado VARCHAR(10),
id_pessoa VARCHAR(10)
);

CREATE TABLE contato (
descricao VARCHAR(10),
id_contato VARCHAR(10) PRIMARY KEY,
id_pessoa VARCHAR(10),
id_tipo_contato VARCHAR(10)
);

CREATE TABLE tipo_contato (
id_tipo_contato VARCHAR(10) PRIMARY KEY,
descricao_tipo VARCHAR(10)
);

CREATE TABLE apresenta (
id_pessoa VARCHAR(10),
cod_produto VARCHAR(10)
);

CREATE TABLE escolhida (
cod_lingua VARCHAR(10),
id_pessoa VARCHAR(10),
FOREIGN KEY(id_pessoa) REFERENCES usuario (id_pessoa)
);

CREATE TABLE lingua (
Descricao_lingua VARCHAR(10),
cod_lingua VARCHAR(10) PRIMARY KEY
);

CREATE TABLE produtos (
cod_produto VARCHAR(10) PRIMARY KEY
);

CREATE TABLE login_pessoa (
Senha VARCHAR(10),
Login VARCHAR(10),
id_pessoa VARCHAR(10) PRIMARY KEY,
data_inicio DATETIME,
tipo_pessoa VARCHAR(10)
);

CREATE TABLE empresa (
Razao_Social VARCHAR(45),
Nome_Fantasia VARCHAR(45),
id_pessoa VARCHAR(10) PRIMARY KEY
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
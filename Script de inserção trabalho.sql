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
id_pessoa INTEGER primary key
);

CREATE TABLE book (
Book INTEGER AUTO_INCREMENT PRIMARY KEY,
descricao_book VARCHAR(45)
);

CREATE TABLE itens (
Itens INTEGER AUTO_INCREMENT PRIMARY KEY,
Descricao_item VARCHAR(45)
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
cod_produto INTEGER AUTO_INCREMENT PRIMARY KEY,
Book Integer,
Itens INTEGER
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
id_pessoa INTEGER primary key
);

ALTER TABLE usuario_empresa ADD FOREIGN KEY(id_pessoa_us) REFERENCES usuario (id_pessoa);
ALTER TABLE usuario_empresa ADD FOREIGN KEY(id_pessoa_emp) REFERENCES empresa (id_pessoa);
ALTER TABLE empresa_usuario ADD FOREIGN KEY(id_pessoa_us) REFERENCES usuario (id_pessoa);
ALTER TABLE empresa_usuario ADD FOREIGN KEY(id_pessoa_emp) REFERENCES empresa (id_pessoa);
ALTER TABLE produtos ADD FOREIGN KEY(Book) REFERENCES book (Book);
ALTER TABLE produtos ADD FOREIGN KEY(Itens) REFERENCES itens (Itens);
ALTER TABLE endereco ADD FOREIGN KEY(id_pessoa) REFERENCES login_pessoa (id_pessoa);
ALTER TABLE contato ADD FOREIGN KEY(id_pessoa) REFERENCES login_pessoa (id_pessoa);
ALTER TABLE contato ADD FOREIGN KEY(id_tipo_contato) REFERENCES tipo_contato (id_tipo_contato);
ALTER TABLE apresenta ADD FOREIGN KEY(id_pessoa) REFERENCES empresa (id_pessoa);
ALTER TABLE apresenta ADD FOREIGN KEY(cod_produto) REFERENCES produtos (cod_produto);
ALTER TABLE escolhida ADD FOREIGN KEY(cod_lingua) REFERENCES lingua (cod_lingua);

INSERT INTO login_pessoa (Login,Senha,tipo_pessoa,data_inicio) VALUES 
("Matheus","**********","Usuario","2016/01/01"),("Marcos","**********","Usuario","2016/02/02"),("Lucas","**********","Usuario","2016/03/03"),("João","**********","Usuario","2016/04/04"),("Laéber Estudios","**********","Empresa","2016/07/07"),("JP Fotografias","**********","Empresa","2016/08/08")
;

INSERT INTO usuario (Nome_completo,id_pessoa) VALUES
("Matheus",1),("Marcos",2),("Lucas",3),("João",4)
;

INSERT INTO empresa (Razao_Social,Nome_Fantasia,id_pessoa) VALUES
("Laéber Estudios S/A","LB Estudios",5),("JP Fotografias LTDA","Joao Pedro Fotografias",6)
;


INSERT INTO endereco (Cidade,Numero,CEP,Bairro,Rua,Estado,id_pessoa) VALUES 
("Vitória",15,11111111,"Goiabeiras","Periquito","ES",1),("Serra",16,22222222,"Serra Dourada","Pavao","ES",2),("Salvador",17,33333333,"Pelourinho","Galinhas","BA",3),("Rio de Janeiro",18,44444444,"Morro do Alemão","Urubu","RJ",4),("Itaubaté",19,55555555,"Fim","Pintinho","SP",5),("Teixeira de Freitas",20,66666666,"America","Aguia","BA",6)
;

INSERT INTO tipo_contato (descricao_tipo) VALUES
("Gmail"),("Hotmail"),("Telefone Fixo"),("Telefone Celular")
;

INSERT INTO contato (descricao,id_pessoa,id_tipo_contato) VALUES
("Matheus@gmail.com",1,1),("Marcos@gmail.com",2,1),("Lucas@hotmail.com",3,2),("João@hotmail.com",4,2),("(xx) 3341-2548",5,3),("(xx) 9.9584-7825",6,4)
;

INSERT INTO lingua (Descricao_lingua) VALUES
("français"),("Português"),("English"),("Español"),("Italiano"),("‎北方話")
;

INSERT INTO empresa_usuario (Avaliacao,id_pessoa_us,id_pessoa_emp) VALUES
(5,1,5),(4,2,6),(3,4,5),(4,3,6),(2,3,5),(3,4,6),(5,2,5),(1,1,6)
;

INSERT INTO usuario_empresa (Avaliacao,id_pessoa_us,id_pessoa_emp) VALUES
(4,4,5),(5,3,6),(2,2,5),(3,1,6),(1,1,5),(3,2,6),(5,3,5),(4,4,6)
;

INSERT INTO book (descricao_book) VALUES
("Ensaio de gravida"),("Casamento"),("Formatura"),("Aniversario"),("Ensaios familia")
;

INSERT INTO itens (Descricao_item) VALUES
("Lente difusora"),("Album digital"),("Album analogico")
;

insert into escolhida values
(1,1),(2,2),(3,3),(4,4)
;

INSERT INTO produtos (Book,Itens) VALUES
(1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(5,2),(5,3)
;

INSERT INTO apresenta (id_pessoa,cod_produto) values
(5,1),(5,2),(5,3),(5,5),(5,7),(5,9),(5,11),(5,13),(5,15),(6,2),(6,4),(6,6),(6,8),(6,10),(6,12),(6,14)
;
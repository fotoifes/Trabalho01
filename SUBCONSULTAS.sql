use fotografia;
select * from usuario where id_pessoa = (select max(id_pessoa) from usuario);
select * from book where Book = (select min(Book) from book);
select * from endereco where Endereco = (select max(Endereco) from endereco);

UPDATE produtos set book = 2 where cod_produto > 9 and cod_produto < 13;
UPDATE login_pessoa set login = "MTUS" where id_pessoa = 1;
UPDATE endereco set bairro = "Jacaraípe"  where id_pessoa = 2;
UPDATE endereco set Numero = 23  where id_pessoa = 2;
delete from lingua where cod_lingua = 6;
delete from apresenta where cod_produto = 2;
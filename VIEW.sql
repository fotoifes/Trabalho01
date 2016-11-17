Create view Avaliacao_usuarios as
select usuario.Nome_completo,usuario_empresa.Avaliacao as "Avaliação do usuario", empresa.Razao_Social as "Empresa avaliada"
from usuario 
join usuario_empresa on(usuario.id_pessoa = usuario_empresa.id_pessoa_us)
inner join empresa on (empresa.id_pessoa = usuario_empresa.id_pessoa_emp )
; 

Create view Avaliacao_da_Empresa as
select empresa.Razao_Social,empresa_usuario.Avaliacao as "Avaliação da Empresa",usuario.Nome_completo as "Usuário avaliado"
from empresa 
join empresa_usuario on(empresa.id_pessoa = empresa_usuario.id_pessoa_emp)
inner join usuario on (usuario.id_pessoa = empresa_usuario.id_pessoa_us)
;

create view Tudo_do_usuario as
select login_pessoa.Login,login_pessoa.tipo_pessoa as "Tipo de usuario",login_pessoa.data_inicio as "Data de inicio do cadastro",
endereco.Estado,endereco.Cidade,endereco.Bairro,
contato.descricao as "Contato"
from login_pessoa
inner join endereco on (login_pessoa.id_pessoa = endereco.id_pessoa)
inner join contato on (contato.id_pessoa = login_pessoa.id_pessoa)
;

create view Mostra_Produtos as
select book.descricao_book,itens.Descricao_item
from produtos 
join book on (produtos.Book = book.Book)
inner join itens on (itens.Itens = produtos.Itens)
;

create view Produtos_da_Empresa as
select empresa.Razao_Social , book.descricao_book,itens.Descricao_item
from apresenta
inner join empresa on (empresa.id_pessoa = apresenta.id_pessoa)
inner join produtos on (apresenta.cod_produto = produtos.cod_produto)
join book on (produtos.Book = book.Book)
inner join itens on (itens.Itens = produtos.Itens)
;

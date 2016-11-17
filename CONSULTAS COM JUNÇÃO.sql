use fotografia;
select login_pessoa.id_pessoa,login_pessoa.Login,login_pessoa.data_inicio
from login_pessoa join empresa on(login_pessoa.id_pessoa = empresa.id_pessoa);  

select login_pessoa.id_pessoa,login_pessoa.Login
from login_pessoa join usuario on(login_pessoa.id_pessoa = usuario.id_pessoa);  

select login_pessoa.Login,endereco.Cidade,endereco.Estado
from login_pessoa join endereco on(login_pessoa.id_pessoa = endereco.id_pessoa);  

select login_pessoa.Login,contato.descricao as "contato da pessoa"
from login_pessoa join contato on(login_pessoa.id_pessoa = contato.id_pessoa);  

select contato.id_pessoa,contato.descricao as "contato_pessoa",tipo_contato.descricao_tipo
from contato join tipo_contato on(contato.id_tipo_contato = tipo_contato.id_tipo_contato);  

select usuario.Nome_completo,escolhida.id_pessoa as "Codigo do Usuário"
from usuario join escolhida on(usuario.id_pessoa = escolhida.id_pessoa);  

select escolhida.id_pessoa as "Codigo do Usuário",lingua.cod_lingua as "Código da lingua",lingua.Descricao_lingua
from escolhida join lingua on(lingua.cod_lingua = escolhida.cod_lingua);  

select usuario.Nome_completo,usuario_empresa.Avaliacao as "Avaliação do usuario", usuario_empresa.id_pessoa_emp as "Empresa avaliada"
from usuario join usuario_empresa on(usuario.id_pessoa = usuario_empresa.id_pessoa_us); 

select empresa.Razao_Social,empresa_usuario.Avaliacao as "Avaliação da Empresa",empresa_usuario.id_pessoa_us as "Usuário avaliado"
from empresa join empresa_usuario on(empresa.id_pessoa = empresa_usuario.id_pessoa_emp);

select empresa.Razao_Social as " RAZÃO SOCIAL" ,apresenta.cod_produto
from Apresenta join empresa on (Apresenta.id_pessoa = empresa.id_pessoa); 

select apresenta.id_pessoa,produtos.cod_produto
from Apresenta join produtos on (Apresenta.cod_produto = produtos.cod_produto); 

select book.descricao_book,produtos.cod_produto
from book join produtos on(book.Book = produtos.Book); 

select itens.descricao_item,produtos.cod_produto
from itens join produtos on(itens.Itens = produtos.Itens); 


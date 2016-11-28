# TRABALHO DE Banco De Dados Fotografia
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
Integrantes do grupo: Estêvão Segatto Vieira e Matheus Lopes da Costa Abreu.<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> e motivação da escolha realizada. <br>

###3	MINI-MUNDO<br>
É um site de consulta de estúdios fotográficos, sendo interativo entre duas entidades, O usuário, que acessa o site em busca de estúdios fotográficos, e a empresa que atua como divulgadora de seus próprios produtos, usando o espaço do site para fazê-lo. Tais entidades pertecem a uma "maior", Pessoa, a qual direciona o tipo de usuário que está acessando o site. A pessoa acessa o site por um Login e uma senha feita por ela, sendo o Login uma entidade.Em seu cadastro a Pessoa, sendo ela usuário ou empresa, possui contatos e estes por sua vez tipos, formando duas entidades, contato e tipo_contato, cada qual com sua identificação e descrição. O Usuário em seu cadastro pode escolher uma língua de sua preferência para acessar o site,forma-se entao a entidade língua, cada língua com seu código e descrição. O site possui um sistema de avaliação entre seus pertencentes, usuários e empresas, sendo que um usuário avalia um empresa e a empresa pode avaliar o usuário, caso este tenha alguma relação a empresa. Um usuário não pode avaliar outro usuário e o mesmo ocorre com as empresas. As avaliações de usuário para empresa possuem tanto o código do usuário que avaliou como o da empresa avaliada, e As avaliações de empresa para usuário possuem tanto o código da empresa que avaliou como o do usuário avaliado, todas as avaliações possuem notas de 0 a 5.O site possui também um sistema de apresentações de empresas (geralmente estúdios fotográficos); a empresa apresenta seus produtos sendo eles formados por combinações entre itens e books. Um item é caracterizado por um produto não relacionado diretamente à foto como uma lente difusora. Já o Book é um álbum de fotográfias. A empresa apresenta um produto sendo ele constituído por um álbum e um item. Forma-se assim no contexto do site 3 entidades, produtos,itens e books. Os produtos possuem seus codigos. Cada book possui seu codigo e sua descrição, o mesmo ocorre com os itens.  <br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Mockup](https://github.com/fotoifes/Trabalho01/blob/master/telas.pdf?raw=true "Telasl")
###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/conceitual%20definitivo.png?raw=true "Modelo Conceitual")
    
    5.2 NOTACAO UML 
![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Nota%C3%A7%C3%A3o%20UML.png?raw=true "Modelo UML")

####5.1 Validação do Modelo Conceitual
    [Grupo01]: [Juliana e Luana]
    [Grupo02]: [Gustavo de Assis e Victor]

####5.2 DECISÕES DE PROJETO
    Login: este campo é a chave primaria de 4 entidades por identificar quem esta acessando sua conta no site.
    Tipo_usuario: este campo é chave primaria de 2 entidades por, em conjunto com o atributo login, identificar que tipo de usuario está acessando sua conta.
    Contatos: optamos pelo atributo multivalorado, por ser possível inúmeras formas de contatar a pessoa cadastrada.
    Língua: optamos pelo atributo multivalorado a língua base escolhida para acesso do site, tendo como base várias possíveis traduções  do site para a língua nativa do cadastrado.
    Endereço: optamos pelo atributo composto por haver um numero específicos de endereços para um cadastrado.
    Avaliação: este item esta relacionado á avaliação que é feita pelo usuário sobre a empresa e, da empresa sobre um usuário, o qual    usou os serviços da empresa.

####5.3 DESCRIÇÃO DOS DADOS 
    
    Configurações: Tabela que permite que o usuario possa editar alguns dados.
    Login: Campo que armazena o nome de usuario(sendo esse usuário como um código pessoal), permitindo a entrada no site.
    Tipo_usuario: Campo que armazena o tipo de usuario, podendo diferencia-lo de um simples usuario para um estúdio.
    
    Empresa: Tabela que permite guardar os dados da empresa.
    Login: Campo que armazena o nome de usuario(sendo esse usuário como um código pessoal), permitindo a entrada no site.
    Razao_Social : Campo que armazena o nome da empresa.
    
    Entrada: Tabela que permite o cadastro do usuario.
    Login: Campo que armazena o nome de usuario(sendo esse usuário como um código pessoal), permitindo a entrada no site.
    
    Produto: Tabela que armazena dados referentes aos serviços prestados por cada estúdio.
    Razao_Social : Campo que armazena o nome da empresa.
    
    Usuario: Tabela que permite guardar os dados do usuario.
    Login: Campo que armazena o nome de usuario(sendo esse usuário como um código pessoal), permitindo a entrada no site.
    Tipo_usuario: Campo que armazena o tipo de usuario, podendo diferencia-lo de um simples usuario para um estúdio.
    

###6	MODELO LÓGICO<br>
![Modelo Lógico](https://github.com/fotoifes/Trabalho01/blob/master/Logico%20definitivo.png?raw=true "Modelo Lógico")
###7	MODELO FÍSICO<br>
![Modelo Físico](https://github.com/fotoifes/Trabalho01/blob/master/operacional.sql?raw=true "Modelo Físico")        
        
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
Os Dados são fictícios. Não foi utilizados códigos reutilizados. O trabalho foi baseado na base do emprego de um dos integrantes do grupo, que é filho de fotógrafa
            
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS<br>
![Script](https://github.com/fotoifes/Trabalho01/blob/master/Script%20de%20inser%C3%A7%C3%A3o%20trabalho.sql?raw=true "Script")
        
###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

select * from book; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20book.png?raw=true "Tabela book")<br>

select * from apresenta; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20apresenta.png?raw=true "Tabela apresenta")<br>

select * from contatos;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20contatos.png?raw=true "Tabela contatos")<br>

select * from empresa;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20empresa.png?raw=true "Tabela empresa")<br>

select * from empresa_usuario;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20empresa_usuario.png?raw=true "Tabela empresa_usuario")<br>

select * from endereco;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20endereco.png?raw=true "Tabela endereco")<br>

select * from escolhida;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20escolhida.png?raw=true "Tabela escolhida")<br>

select * from itens;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20itens.png?raw=true "Tabela itens")<br>

select * from lingua;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20lingua.png?raw=true "Tabela lingua")<br>

select * from login_pessoa;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20login_pessoa.png?raw=true "Tabela login_pessoa")<br>

select * from produtos;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20produtos.png?raw=true "Tabela produtos")<br>

select * from tipo_contato;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20tipo_contato.png?raw=true "Tabela tipo_contato")<br>

select * from usuario;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20usuario.png?raw=true "Tabela usuario")<br>

select * from usuario_empresa;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Select%20usuario_empresa.png?raw=true "Tabela usuario_empresa")<br>

####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>

select * from lingua where cod_lingua > 3;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/consulta%20where%201.png?raw=true "where")<br>

select * from login_pessoa where data_inicio > "2016/03/03"; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/consulta%20where%202.png?raw=true "where")<br>

select * from produtos where Itens >= 2 ; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/consulta%20where%203.png?raw=true "where")<br>

select * from tipo_contato where descricao_tipo = "Gmail"; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/consulta%20where%204.png?raw=true "where")<br>

####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>

select * from apresenta where cod_produto = 3 and id_pessoa = 5;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/operador%201.png?raw=true "where")<br>

select login,tipo_pessoa as tipodeusuario from login_pessoa;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/operador%202.png?raw=true "where")<br>

####9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>

select * from login_pessoa where login like "M%";

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Like%201.png?raw=true "where")<br>

select * from login_pessoa where tipo_pessoa like "%o";

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Like%202.png?raw=true "where")<br>

select * from endereco where Rua like "%a%";

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Like%203.png?raw=true "where")<br>

select * from endereco where Rua like "_o%";

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Like%204.png?raw=true "where")<br>

####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

UPDATE produtos set book = 2 where cod_produto > 9 and cod_produto < 13;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/UpdateDelete%201.png?raw=true "Update_Delete")<br>

UPDATE login_pessoa set login = "MTUS" where id_pessoa = 1;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/UpdateDelete%202.png?raw=true "Update_Delete")<br>

UPDATE endereco set bairro = "Jacaraípe"  where id_pessoa = 2;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/UpdateDelete%203.png?raw=true "Update_Delete")<br>

UPDATE endereco set Numero = 23  where id_pessoa = 2;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/UpdateDelete%204.png?raw=true "Update_Delete")<br>

delete from lingua where cod_lingua = 6;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/UpdateDelete%205.png?raw=true "Update_Delete")<br>

delete from apresenta where cod_produto = 2;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/UpdateDelete%206.png?raw=true "Update_Delete")<br>

####9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>

select login_pessoa.id_pessoa,login_pessoa.Login,login_pessoa.data_inicio
from login_pessoa join empresa on(login_pessoa.id_pessoa = empresa.id_pessoa); 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join1.png?raw=true "Junções join")<br>

select login_pessoa.id_pessoa,login_pessoa.Login
from login_pessoa join usuario on(login_pessoa.id_pessoa = usuario.id_pessoa);  

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join2.png?raw=true "Junções join")<br>


select login_pessoa.Login,endereco.Cidade,endereco.Estado
from login_pessoa join endereco on(login_pessoa.id_pessoa = endereco.id_pessoa);  

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join3.png?raw=true "Junções join")<br>

select login_pessoa.Login,contato.descricao as "contato da pessoa"
from login_pessoa join contato on(login_pessoa.id_pessoa = contato.id_pessoa);  

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join4.png?raw=true "Junções join")<br>


select contato.id_pessoa,contato.descricao as "contato_pessoa",tipo_contato.descricao_tipo
from contato join tipo_contato on(contato.id_tipo_contato = tipo_contato.id_tipo_contato);  

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join5.png?raw=true "Junções join")<br>

select usuario.Nome_completo,escolhida.id_pessoa as "Codigo do Usuário"
from usuario join escolhida on(usuario.id_pessoa = escolhida.id_pessoa);  

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join6.png?raw=true "Junções join")<br>

select escolhida.id_pessoa as "Codigo do Usuário",lingua.cod_lingua as "Código da lingua",lingua.Descricao_lingua
from escolhida join lingua on(lingua.cod_lingua = escolhida.cod_lingua);  

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join7.png?raw=true "Junções join")<br>


select usuario.Nome_completo,usuario_empresa.Avaliacao as "Avaliação do usuario", usuario_empresa.id_pessoa_emp as "Empresa avaliada"
from usuario join usuario_empresa on(usuario.id_pessoa = usuario_empresa.id_pessoa_us); 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join8.png?raw=true "Junções join")<br>

select empresa.Razao_Social,empresa_usuario.Avaliacao as "Avaliação da Empresa",empresa_usuario.id_pessoa_us as "Usuário avaliado"
from empresa join empresa_usuario on(empresa.id_pessoa = empresa_usuario.id_pessoa_emp);

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join9.png?raw=true "Junções join")<br>

select empresa.Razao_Social as " RAZÃO SOCIAL" ,apresenta.cod_produto
from Apresenta join empresa on (Apresenta.id_pessoa = empresa.id_pessoa); 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join10.png?raw=true "Junções join")<br>

select apresenta.id_pessoa,produtos.cod_produto
from Apresenta join produtos on (Apresenta.cod_produto = produtos.cod_produto); 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join11.png?raw=true "Junções join")<br>

select book.descricao_book,produtos.cod_produto
from book join produtos on(book.Book = produtos.Book); 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join12.png?raw=true "Junções join")<br>

select itens.descricao_item,produtos.cod_produto
from itens join produtos on(itens.Itens = produtos.Itens); 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/join13.png?raw=true "Junções join")<br>

####9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>

select * from apresenta group by cod_produto; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Group%20by%201.png?raw=true "Group by")<br>

select * from book group by descricao_book; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Group%20by%202.png?raw=true "Group by")<br>

select * from contato group by descricao; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Group%20by%203.png?raw=true "Group by")<br>

select * from empresa group by Razao_Social; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Group%20by%204.png?raw=true "Group by")<br>

select * from empresa_usuario group by avaliacao; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Group%20by%205.png?raw=true "Group by")<br>

select * from endereco group by cidade; 

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Group%20by%206.png?raw=true "Group by")<br>
        
####9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>

Select login_pessoa.Login as login_da_pessoa, id_pessoa,tipo_pessoa,usuario_empresa.Avaliacao,usuario_empresa.id_pessoa_emp
from login_pessoa
Right join usuario_empresa
on (usuario_empresa.id_pessoa_us = login_pessoa.id_pessoa);

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/RightLeftJoin%201.png?raw=true "Left and Right Join")<br>

Select login_pessoa.Login as login_da_empresa, id_pessoa,tipo_pessoa,empresa_usuario.Avaliacao,empresa_usuario.id_pessoa_us
from login_pessoa
Right join empresa_usuario
on (empresa_usuario.id_pessoa_emp = login_pessoa.id_pessoa);

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/RightLeftJoin%202.png?raw=true "Left and Right Join")<br>


Select login_pessoa.Login as login_da_pessoa,usuario_empresa.Avaliacao,usuario_empresa.id_pessoa_emp
from login_pessoa
left join usuario_empresa
on (usuario_empresa.id_pessoa_us = login_pessoa.id_pessoa);

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/RightLeftJoin%203.png?raw=true "Left and Right Join")<br>

Select id_pessoa,tipo_pessoa,empresa_usuario.Avaliacao,empresa_usuario.id_pessoa_us
from login_pessoa
left join empresa_usuario
on (empresa_usuario.id_pessoa_emp = login_pessoa.id_pessoa);

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/RightLeftJoin%204.png?raw=true "Left and Right Join")<br>

####9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
###9.9.1 Script de criação das Views <br>
    
![Script de criação das VIEW's](https://github.com/fotoifes/Trabalho01/blob/master/VIEW.sql?raw=true "VIEW")<br>
        
###9.9.2 Script de Select das Views <br>

select * from avaliacao_da_empresa ;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/select%20View1.png?raw=true "VIEW")<br>

select * from avaliacao_usuarios;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/select%20View2.png?raw=true "VIEW")<br>

select * from mostra_produtos;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/select%20View3.png?raw=true "VIEW")<br>

select * from tudo_do_usuario;

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/select%20View4.png?raw=true "VIEW")<br>


####9.10	SUBCONSULTAS (Mínimo 3) <br>

select * from usuario where id_pessoa = (select max(id_pessoa) from usuario);

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/subconsultas1.png?raw=true "Subconsultas")<br>

select * from book where Book = (select min(Book) from book);

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/subconsultas2.png?raw=true "Subconsultas")<br>

select * from endereco where Endereco = (select max(Endereco) from endereco);

![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/subconsultas3.png?raw=true "Subconsultas")<br>

###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
![SLIDE DE APRESENTAÇÃO](https://github.com/fotoifes/Trabalho01/blob/master/BD.pptx?raw=true "SLIDES")<br>

###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
Elaboração correta do modelo conceitual e lógico.
 
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/





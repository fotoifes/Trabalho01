# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
Integrantes do grupo<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> e motivação da escolha realizada. <br>

###3	MINI-MUNDO<br>
Descrever o mini-mundo. Não deve ser maior do que 30 linhas <br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")


###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/Modelo.png?raw=true "Modelo Conceitual")
    
    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)

####5.1 Validação do Modelo Conceitual
    [Grupo01]: [Juliana e Luana]
    [Grupo02]: [Gustavo de Assis e Victor]

####5.2 DECISÕES DE PROJETO
    Login: este campo é a chave primaria de 4 entidades por identificar quem esta acessando sua conta no site
    Tipo_usuario: este campo é chave primaria de 2 entidades por, em conjunto com o atributo login, identificar que tipo de usuario está acessando sua conta
    Contatos: optamos pelo atributo multivalorado, por ser possível inúmeras formas de contatar a pessoa cadastrada
    Língua: optamos pelo atributo multivalorado a língua base escolhida para acesso do site, tendo como base várias possíveis traduções  do site para a língua nativa do cadastrado
    Endereço: optamos pelo atributo composto por haver um numero específicos de endereços para um cadastrado
    Avaliação: este item esta relacionado á avaliação que é feita pelo usuário sobre a empresa e, da empresa sobre um usuário, o qual    usou os serviços da empresa


####5.3 DESCRIÇÃO DOS DADOS 
    
    Configurações: Tabela que permite que o usuario possa editar alguns dados.<br>
    Login: Campo que armazena o nome de usuario(sendo esse usuário como um código pessoal), permitindo a entrada no site.<br>
    Tipo_usuario: Campo que armazena o tipo de usuario, podendo diferencia-lo de um simples usuario para um estúdio.<br>
    
    Empresa: Tabela que permite guardar os dados da empresa.<br>
    Login: Campo que armazena o nome de usuario(sendo esse usuário como um código pessoal), permitindo a entrada no site.<br>
    Razao_Social : Campo que armazena o nome da empresa.<br>
    
    Entrada: Tabela que permite o cadastro do usuario.<br>
    Login: Campo que armazena o nome de usuario(sendo esse usuário como um código pessoal), permitindo a entrada no site.<br>
    
    Produto: Tabela que armazena dados referentes aos serviços prestados por cada estúdio.<br>
    Razao_Social : Campo que armazena o nome da empresa.<br>
    
    Usuario: Tabela que permite guardar os dados do usuario.<br>
    Login: Campo que armazena o nome de usuario(sendo esse usuário como um código pessoal), permitindo a entrada no site.<br>
    Tipo_usuario: Campo que armazena o tipo de usuario, podendo diferencia-lo de um simples usuario para um estúdio.<br>
    

###6	MODELO LÓGICO<br>
![Alt text](https://github.com/fotoifes/Trabalho01/blob/master/modelo%20logico.png?raw=true "Modelo Conceitual")
###7	MODELO FÍSICO<br>

        Entrega até este ponto em 25/10/2016
        
        
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários


        Entrega até este ponto em 01/11/2016
        
###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
####9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
####9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
####9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em 08/11/2016
        
####9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
####9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
####9.10	SUBCONSULTAS (Mínimo 3) <br>
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega final em 22/11/2016
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/





#Criação do Banco de Dados
import pandas

import sqlalchemy

import MySQLdb

from sqlalchemy import create_engine


parametros_conexao='mysql://matheus1Lopes:esma12345678@matheus1Lopes.mysql.pythonanywhere-services.com/matheus1Lopes$bancosqlpy?charset=utf8'
engine = create_engine(parametros_conexao)
#Estabelecendo Conexão
conn = engine.connect()
#Dando Nome a Tabela
tabela='tweets_sobre_Estudios_Fotograficos'
#Criando a Tabela
result = conn.execute('CREATE TABLE IF NOT EXISTS ' + tabela +' (Nome varchar(100),Localizacao varchar(100),Tweet varchar(255));')
#Fim da criação do banco de Dados
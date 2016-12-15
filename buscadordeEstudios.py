#Necessita-se que execulte o arquivo Scriptdecriacaodobanco.py antes deste, para que o banco seja criado

import tweepy


import Scriptdecriacaodobanco as scb


#Declaração das Chaves e Tokens


consumer_key = "F6z0a3ynbg5CK7tG7c8oW9Fao"

consumer_secret = "Dwful7wq02J5ZuoQh33STT3zVgFb9fcd0jWJKIMNvx3hD6z53x"


access_token = "2389347674-D9O4hiyLmmjFojTZpW92evrrtUy7XvoLoo3OqCn"

access_token_secret = "9EOlLVJ30T3REs0LDto5zdcwEJPQQjfJobIXUGmGlQbQI"



#Autenticação das chaves e tokens
auth = tweepy.OAuthHandler(consumer_key, consumer_secret)

auth.set_access_token(access_token, access_token_secret)

#variavel que recebe as variantes das chaves e tokens e o acesso ao tweeter
api = tweepy.API(auth)

#O que será pesquisado

pesquisa = ["Estúdios de Fotografias" or "estúdios de fotografias" or "Estudios de Fotografias" or "estudios de fotografias" or "Fotografias" or "Fotografia"]

#A pesquisa
publicacoes = api.search(q=pesquisa)



#A inserção no banco de dados


for pesquisar in publicacoes:

	nome = pesquisar.user.screen_name #Pega o Nome de Usuário da pessoa que postou

	localizar = pesquisar.user.location
    #Pega a Cidade e Estado da pessoa que postou (qualquer país)
	tweeter = pesquisar.text
   #pega o comentario da pessoa

	#Aqui começa a inserção no banco de dados
	consulta= """insert into """+scb.tabela+""" (Nome, Localizacao, Tweet) values ('""" + str(nome) + """','""" + str(localizar) + """','"""+ str(tweeter) +"""');"""


	#Execusão a inserção
	result = scb.conn.execute(consulta)


#Select da tabela Pronta
result = scb.conn.execute('select * from '+scb.tabela+';')

df = scb.pandas.DataFrame(result.fetchall())
print(df)




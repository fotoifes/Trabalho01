import tweepy
import Scriptdecriacaodobanco as scb

consumer_key = "F6z0a3ynbg5CK7tG7c8oW9Fao"
consumer_secret = "Dwful7wq02J5ZuoQh33STT3zVgFb9fcd0jWJKIMNvx3hD6z53x"
access_token = "2389347674-D9O4hiyLmmjFojTZpW92evrrtUy7XvoLoo3OqCn"
access_token_secret = "9EOlLVJ30T3REs0LDto5zdcwEJPQQjfJobIXUGmGlQbQI"

auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth)

pesquisa = ["Estúdios de Fotografias" or "estúdios de fotografias" or "Estudios de Fotografias" or "estudios de fotografias" or "Fotografias" or "Fotografia"]
publicacoes = api.search(q=pesquisa)

for pesquisar in publicacoes:
    nome = pesquisar.user.screen_name
    localizar = pesquisar.user.location
    tweeter = pesquisar.text
    consulta= """insert into """+scb.tabela+""" (Nome, Localizacao, Tweet) values ('""" + str(nome) + """','""" + str(localizar) + """','"""+ str(tweeter) +"""');"""
    result = scb.conn.execute(consulta)
    print(result)
    result = scb.conn.execute('select * from '+scb.tabela+';')
    df = scb.pandas.DataFrame(result.fetchall())
    print(df)
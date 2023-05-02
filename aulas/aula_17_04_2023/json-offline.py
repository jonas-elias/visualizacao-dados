import json

arquivo = open('./ExemploJSON.json', 'r')

dados = json.load(arquivo)
arquivo.close()

print(dados.values())
print(dados.keys())

print(dados['data'])
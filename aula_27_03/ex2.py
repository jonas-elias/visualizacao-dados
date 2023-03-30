lista_contas = "Arroz; 15,99**Açúcar; 18,99**Feijão carioca; 12,99**Farinha de trigo; 19.99**Picanha; 55,00**Farofa; 3,99"
lista_contas = lista_contas.replace('\t', '')
# print(lista_contas)

item_conta = lista_contas.split('**')
# print(item_conta)

for x in range(0, len(item_conta)):
    item_conta[x] = (item_conta[x].split(';'))

valor = 0

for x in range(0, len(item_conta)):
    valor += float((item_conta[x][1].strip()).replace(',', '.'))

media = valor / len(item_conta)
print("{:.2f}".format(media))

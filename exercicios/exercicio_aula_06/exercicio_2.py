import random as rd

def insereValorLista(lista):
    for i in range(10):
        lista.append(rd.randint(0, 100))
    return lista

lista = []
lista = insereValorLista(lista)

print(lista)

lista.pop(0)
lista.pop()

print(lista)

lista = insereValorLista(lista)

print(lista)

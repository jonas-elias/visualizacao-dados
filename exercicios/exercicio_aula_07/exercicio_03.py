import random as rd

def insereValorConjunto(conjunto):
    for i in range(10):
        conjunto.add(rd.randint(0, 10))
    return conjunto

conjunto1 = set()
conjunto1 = insereValorConjunto(conjunto1)

conjunto2 = set()
conjunto2 = insereValorConjunto(conjunto2)

print(conjunto1.difference(conjunto2))
print(conjunto2.difference(conjunto1))

print(conjunto1.intersection(conjunto2))

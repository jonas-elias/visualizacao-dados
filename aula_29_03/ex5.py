import random

numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
random.shuffle(numeros)

print(numeros)

numeros_sort = range(1, 50)

numeros_ganhadores = random.sample(numeros_sort, 6)

print(numeros_ganhadores)
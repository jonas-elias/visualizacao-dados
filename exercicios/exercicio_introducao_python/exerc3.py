numeros = []

for i in range(1, 4):
    numeros.append(int(input(f'Digite o número {i}: ')))

numeros = sorted(numeros, reverse=True)

print(f'Maior número: {numeros[0]}')
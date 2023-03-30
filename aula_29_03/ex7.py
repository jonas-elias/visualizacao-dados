import numpy as np

numeros = np.random.randint(1, 401, (1, 50))

numeros[numeros < 200]
numeros[numeros < 30]
numeros.size
print(numeros.mean())

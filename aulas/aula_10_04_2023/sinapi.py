import numpy as np
import pandas as pd

sinapi = pd.read_excel('./Trabalho com Dados SINAPI.XLS')

# print(sinapi.iloc[5])
sinapi.columns = list(sinapi.iloc[5])
sinapi.drop(range(0, 6), inplace=True)  # inplace = dataset original

# print(sinapi.head())
# sinapi.iloc[0,:]

sinapi.reset_index(inplace=True)
sinapi = sinapi[0:-2]
ultimo = len(sinapi) - 1
penultimo = len(sinapi) - 2
# sinapi.drop(range(penultimo, ultimo + 1), inplace=True)
# sinapi.drop([penultimo, ultimo], inplace=True)

# print(sinapi.dtypes)

print(sinapi.tail())

def PontoNada(x):
    x = str(x).replace('.', '')
    return x

def VirgulaPonto(x):
    x = str(x).replace(',', '.')
    return float(x)

sinapi['  PRECO MEDIANO R$'] = sinapi['  PRECO MEDIANO R$'].apply(PontoNada)
sinapi['  PRECO MEDIANO R$'] = sinapi['  PRECO MEDIANO R$'].apply(VirgulaPonto)
# sinapi['  PRECO MEDIANO R$'] = sinapi['  PRECO MEDIANO R$'].astype('float')
print(sinapi.tail())
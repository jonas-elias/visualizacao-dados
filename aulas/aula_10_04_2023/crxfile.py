import numpy as np
import pandas as pd

dataSet = pd.read_csv('./Trabalho com Dados crx.data')
nomes = list()

for ch in range(ord('A'), ord('A')+dataSet.shape[1]):
    nomes.append(chr(ch))
    
dataSet.columns = nomes

# print(dataSet.tail())
print(dataSet[['A', 'B']])
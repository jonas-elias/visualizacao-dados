import pandas as pd
import numpy as np

dados = {
    'estado': [
        'PR', 'SC', 'RS', 'RJ', 'SP', 'MG'
    ],
    'ano': [
        2014, 2015, 2016, 2018, 2019, 2020
    ],
    'desempenho': [
        1.5, 1.6, 1.2, 1.7, 1.8, 2.0
    ]
}

dataFrame = pd.DataFrame(dados)
# print(pd)
# print(dataFrame['ano'])
# print(dataFrame.head())
# print(dataFrame.tail())
# print(dataFrame.loc[2])
# print(dataFrame.iloc[2, 1])
# print(dataFrame.loc[2, 'estado'])
# dataFrame.at[2, 0] = 2023
# dataFrame['ano'] = 2023
dataFrame['novaColuna'] = 'novaColuna'
dataFrame.drop(['novaColuna'], axis=1, inplace=True)
dataFrame.append({
    'estado': 'AC'
}, ignore_index=True)
print(dataFrame)
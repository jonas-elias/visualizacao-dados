import numpy as np
import pandas as pd

dadosTitanic = pd.read_csv('./Trabalho com Dados Titanic.csv')
# print(dadosTitanic.tail())
# print(dadosTitanic.shape)
# print(dadosTitanic.columns)
# print(dadosTitanic.values)
# del dadosTitanic['PassengerId']
dadosTitanic = dadosTitanic.drop('PassengerId', axis=1)
print(dadosTitanic.tail())
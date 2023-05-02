dicionario = {
    'Aluno1': 10,
    'Aluno2': 8,
    'Aluno3': 5,
    'Aluno4': 9,
    'Aluno5': 4,
}

for i in dicionario.keys():
    if dicionario[i] >= 6.0:
        print(f'Passou com a nota {dicionario[i]}')
    elif dicionario[i] >= 3.5:
        print(f'Recuperação com a nota {dicionario[i]}')
    else:
        print(f'Reprovado com a nota {dicionario[i]}')

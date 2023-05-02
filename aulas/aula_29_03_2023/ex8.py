notas = {'jonas': 10, 'zoroastro': 4.8}

for x in notas.values():
    if x >= 6.0:
        print("Passou com a nota {}.".format(x))
    else:
        print("Não passou.")

print(len(notas.values()))

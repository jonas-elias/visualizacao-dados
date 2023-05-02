times = "Palmeiras; 60**São Paulo; 50**Flamengo; 45**Grêmio; 30"

lista_times = times.split('**')

for i in range(len(lista_times)):
     lista_times[i] = lista_times[i].split('; ')

for i in range(len(lista_times)):
    print(f'Time: {lista_times[i][0]}')
    print(f'Pontuação: {lista_times[i][1]}\n')
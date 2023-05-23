numero = int(input("Digite um número: "))
aux = 0
for x in range(1, numero+1):
    if (numero % x == 0):
        aux += 1

if aux > 2:
    print("Não é primo.")
else:
    print("É primo.")
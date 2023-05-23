print('Operações:')
print('SOMAR - 1')
print('SUBTRAIR - 2')
print('DIVIDIR - 3')
print('MULTIPLICAR - 4')

operacao = input('Digite a sua operação: ')
numero1 = int(input('Digite o primeiro número da operação: '))
numero2 = int(input('Digite o segundo número da operação: '))

if operacao == '1':
    print(f'Resultado da operação: {numero1 + numero2}')
elif operacao == '2':
    print(f'Resultado da operação: {numero1 - numero2}')
elif operacao == '3':
    print(f'Resultado da operação: {numero1 * numero2}')
elif operacao == '4':
    print(f'Resultado da operação: {numero1 / numero2}')
else:
    print('Operação não encontrada.')    
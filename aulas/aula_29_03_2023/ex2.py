nome = {'jonas': {
    'telefone': '48999987979',
    'endereco': 'Em algum lugar'
}}
print(nome['jonas']['telefone'])

nome.update({
    'daniele': {
        'telefone': '489999767754',
        'endereco': 'em algum lugar'
    }
})
print(nome['daniele']['endereco'])

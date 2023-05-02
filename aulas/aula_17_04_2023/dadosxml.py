import xml.etree.ElementTree as etree

arquivo = etree.parse('./Exemplo.xml')

root = arquivo.getroot()
# print(root.attrib)
# print(root[0])

# for i in root[0]:
#     print(i.tag, i.attrib, i.text)
    
for i in root.findall('food'):
    print(i.find('item').text)
    print(i.find('descricao').text)
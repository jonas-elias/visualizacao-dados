import requests as r

request = r.get('https://jsonplaceholder.typicode.com/comments')
# print(type(request))
print(request)

response = request.content
print(response)

response = request.json()
print(response)

print(response[0]['name'])
print(response[0].keys())
print(response[0].values())
print(response[0]['body'])

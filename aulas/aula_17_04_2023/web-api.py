import requests as r
import pandas as p

url = 'https://api.github.com/repos/pandas-dev/pandas/issues'

response = r.get(url)
response = response.json()
# print(response[0]['title'])

issues = p.DataFrame(response, columns=['number', 'title', 'labels', 'state'])
print(issues)
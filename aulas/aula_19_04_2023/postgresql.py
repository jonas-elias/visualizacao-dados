import psycopg2
import pandas as pd

conn = psycopg2.connect(
    host='localhost',
    database='visualizacao_dados',
    user='user',
    password='password',
)

cursor = conn.cursor()
# cursor.execute("insert into piloto (id, nome) values (2, 'Vettel')")
# conn.commit()
cursor.execute("select * from piloto")
# dbname = cursor.fetchone()[0]
# print("Nome do banco de dados", dbname)
dados = cursor.fetchall()

# cursor.execute("insert into piloto (id, nome) values (1, 'Lewis')")
print(dados)

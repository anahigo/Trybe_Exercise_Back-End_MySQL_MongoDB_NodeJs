# Bora treinar tudo!
**Criando dataset**
Para treinar todos os comandos, utilizaremos uma nova dataset, que tem informações sobre filmes. Para importar essa dataset, siga os seguintes passos:

1. Clique no link .

2. Copie todo o conteúdo do link e depois abra o Mongo Shell.

3. Cole todo o conteúdo no CLI do Mongo Shell e confirme com ENTER .

Para confirmar que está tudo funcionando, rode o seguinte comando:

db.filmes.find().count()

Deve retornar o valor 37, que é o número de filmes dentro dessa dataset.

**Apagando uma dataset já alterada**
Caso você altere a dataset, faça o seguinte:

1. Faça o drop da database em que você fez as alterações, com o comando:

db.dropDatabase()

2. Refaça todos os passos de criação de uma nova dataset mostrados acima.

Esses passos são importantes porque trabalharemos na aula ao vivo com essa dataset, assegurando que todos terão os mesmos resultados.
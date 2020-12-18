# Manipulação de strings
Agora, vamos fixar os aprendizados com alguns desafios:
1. Faça uma query que exiba a palavra 'trybe' em CAIXA ALTA.

2. Faça uma query que transforme a frase 'Você já ouviu falar do DuckDuckGo?' em 'Você já ouviu falar do Google?'.

3. Utilizando uma query , encontre quantos caracteres temos em 'Uma frase qualquer' .

4. Extraia e retorne a palavra "JavaScript" da frase 'A linguagem JavaScript está entre as mais usadas'.

5. Por fim, padronize a string 'RUA NORTE 1500, SÃO PAULO, BRASIL' para que suas informações estejam todas em caixa baixa.

# Condicionais
É melhor aprender esse tema quebrando a cabeça praticando, então vamos fazer isso.

1. Usando o IF na tabela sakila.film , exiba o id do filme , o título e uma coluna extra chamada 'conheço o filme?', em que deve-se avaliar se o nome do filme é ' ACE GOLDFINGER '. Caso seja, exiba "Já assisti a esse filme". Caso contrário, exiba "Não conheço o filme". Não esqueça de usar um alias para renomear a coluna da condicional.

2. Usando o CASE na tabela sakila.film , exiba o título , a classificação indicativa ( rating ) e uma coluna extra que vamos chamar de 'público-alvo' , em que classificaremos o filme de acordo com as seguintes siglas:
  - G: "Livre para todos";
  - PG: "Não recomendado para menores de 10 anos";
  - PG-13: "Não recomendado para menores de 13 anos";
  - R: "Não recomendado para menores de 17 anos";
  - Se não cair em nenhuma das classificações anteriores: "Proibido para menores de idade".

# Funções matemáticas do MySQL
  # Desafios com DIV e MOD
Dica: Números pares são aqueles que podem ser divididos em duas partes iguais. Ou seja, são aqueles cuja divisão por 2 retorna resto 0.

1. Monte uma query usando o MOD juntamente com o IF para descobrir se o valor 15 é par ou ímpar. Chame essa coluna de 'Par ou Ímpar' , onde ela pode dizer 'Par' ou 'Ímpar'.

2. Temos uma sala de cinema que comporta 220 pessoas. Quantos grupos completos de 12 pessoas podemos levar ao cinema sem que ninguém fique de fora?

3. Utilizando o resultado anterior, responda à seguinte pergunta: temos lugares sobrando? Se sim, quantos?

  # Consolidando seu conhecimento
1. Monte uma query que gere um valor entre 15 e 20 .

2. Monte uma query que exiba o valor arredondado de 15.75 com uma precisão de 5 casas decimais.

3. Estamos com uma média de 39.494 de vendas de camisas por mês. Qual é o valor aproximado para baixo dessa média?

4. Temos uma taxa de inscrição de 85.234% no curso de fotografia para iniciantes. Qual é o valor aproximado para cima dessa média?

# Trabalhando com datas
Para fixar, responda como seria possível encontrar as seguintes informações:
1. Monte uma query que exiba a diferença de dias entre '2030-01-20' e hoje.

2. Monte uma query exiba a diferença de horas entre '10:25:45' e '11:00:00' .

# Utilizando as funções de agregação AVG , MIN , MAX , SUM e COUNT
Para praticar, vamos encontrar algumas informações sobre os filmes cadastrados em nossa base de dados.

1. Monte um query que exiba:
  - A média de duração dos filmes e dê o nome da coluna de 'Média de Duração';

  - A duração mínima dos filmes como 'Duração Mínima';

  - A duração máxima dos filmes como 'Duração Máxima';

  - A soma de todas as durações como 'Tempo de Exibição Total';
  
  - E finalmente, a quantidade total de filmes cadastrados na tabela sakila.film como 'Filmes Registrados'.
  
# Vamos praticar
1. Monte uma query que exiba a quantidade de clientes cadastrados na tabela sakila.customer que estão ativos e a quantidade que estão inativos.

2. Monte uma query para a tabela sakila.customer que exiba a quantidade de clientes ativos e inativos por loja. Os resultados devem conter o ID da loja , o status dos clientes (ativos ou inativos) e a quantidade de clientes por status .

3. Monte uma query que exiba a média de duração por classificação indicativa ( rating ) dos filmes cadastrados na tabela sakila.film . Os resultados devem ser agrupados pela classificação indicativa e ordenados da maior média para a menor.

4. Monte uma query para a tabela sakila.address que exiba o nome do distrito e a quantidade de endereços registrados nele. Os resultados devem ser ordenados da maior quantidade para a menor.

  # Filtrando Resultados do GROUP BY com HAVING
Podemos usar o HAVING para filtrar resultados agrupados, assim como usamos o SELECT...WHERE para filtrar resultados individuais.

A query a seguir busca o nome e a quantidade de nomes cadastrados na tabela sakila.actor e os agrupa por quantidade. Por fim, filtramos os resultados agrupados usando o HAVING , para que somente os nomes que estão cadastrados duas ou mais vezes sejam exibidos.

SELECT first_name, COUNT(*)
FROM sakila.actor
GROUP BY first_name
HAVING COUNT(*) > 2;

-- Ou, melhor ainda, usando o AS para dar nomes às colunas de agregação,
-- melhorando a leitura do resultado
SELECT first_name, COUNT(*) AS nomes_cadastrados
FROM sakila.actor
GROUP BY first_name
HAVING nomes_cadastrados > 2;

-- Observação: o alias não funciona com strings para o HAVING,
-- então use o underline ("_") para separar palavras
-- Ou seja, o exemplo abaixo não vai funcionar
SELECT first_name, COUNT(*) AS 'nomes cadastrados'
FROM sakila.actor
GROUP BY first_name
HAVING 'nomes cadastrados' > 2;

É importante entender que quando usamos o HAVING estamos filtrando somente os resultados gerados após o GROUP BY ter sido executado.

Então vamos brincar um pouco com ele:
1. Usando a query a seguir, exiba apenas as durações médias que estão entre 115.0 a 121.50. Além disso, dê um alias (apelido) à coluna gerada por AVG(length) , de forma que deixe a query mais legível. Finalize ordenando os resultados de forma decrescente.

SELECT rating, AVG(length)
FROM sakila.film
GROUP BY rating;

2. Usando a query a seguir, exiba apenas os valores de total de substituição de custo que estão acima de $3950.50. Dê um alias que faça sentido para SUM(replacement_cost) , de forma que deixe a query mais legível. Finalize ordenando os resultados de forma crescente.

SELECT rating, SUM(replacement_cost)
FROM sakila.film
GROUP by rating;
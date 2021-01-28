# Alavancando o poder dos principais operadores boleanos e relacionais
Entre no banco de dados sakila e siga as instruções (e guarde as queries para conferir posteriormente):
  1. Precisamos identificar o cliente com o e-mail LEONARD.SCHOFIELD@sakilacustomer.org.

  2. Precisamos de um relatório dos nomes, em ordem alfabética, dos clientes que não estão mais ativos no nosso sistema e pertencem à loja com o id 2. Porém, não inclua o cliente KENNETH no resultado.

  3. O setor financeiro quer saber nome, descrição, ano de lançamento e quais são os 100 filmes com o maior custo de substituição, do valor mais alto ao mais baixo, entre os filmes feitos para menores de idade e que têm o custo mínimo de substituição de $18,00 dólares.

  4. Quantos clientes estão ativos e na loja 1?

  5. Mostre todos os detalhes dos clientes que não estão ativos na loja 1.

  6. Precisamos descobrir quais são os 50 filmes feitos para maiores de 17 anos e adultos com a menor taxa de aluguel, para que possamos fazer uma divulgação melhor desses filmes.

# Como criar pesquisas mais dinâmicas e maleáveis usando o LIKE
Para consolidar esse conhecimento, brinque com os resultados que serão encontrados usando os comandos acima e tente criar suas próprias condições. Depois de ter praticado um pouco com eles, tente encontrar as seguintes informações:
  1. Encontre todos os detalhes dos filmes que contêm a palavra " ace " no nome.

  2. Encontre todos os detalhes dos filmes cujas descrições finalizam com " china ".

  3. Encontre todos os detalhes dos dois filmes cujas descrições contêm a palavra " girl " e o título finaliza com a palavra " lord ".

  4. Encontre os dois casos em que, a partir do 4° caractere no título do filme, tem-se a palavra " gon ".

  5. Encontre os dois casos em que, a partir do 4° caractere no título do filme, tem-se a palavra " gon " e a descrição contém a palavra " Documentary ".

  6. Encontre os dois filmes cujos títulos ou finalizam com " academy " ou inciam com " mosquito ".

  7. Encontre os seis filmes que contêm as palavras " monkey " e " sumo " em suas descrições.

# Englobando uma faixa de resultados com IN e BETWEEN
  # Operador IN
  . Como você faria, então, para encontrar, usando o IN , todos os detalhes sobre o aluguel dos clientes com os seguintes ids: 269, 239, 126, 399, 142?

  . Como encontraria todas as informações sobre os endereços que estão registrados nos distritos de QLD, Nagasaki, California, Attika, Mandalay, Nantou e Texas?

  # Consolidando o conhecimento
  1. Encontre o nome, sobrenome e e-mail dos clientes com os seguintes sobrenomes: hicks, crawford, henry, boyd, mason, morales e kennedy, ordenados por nome em ordem alfabética.

  2. Encontre o e-mail dos clientes com os address_id 172, 173, 174, 175 e 176, ordenados em ordem alfabética.

  3. Descubra quantos pagamentos foram feitos entre 01/05/2005 e 01/08/2005. Lembre-se de que, no banco de dados, as datas estão armazenadas no formato ano/mês/dia, diferente do formato brasileiro, que é dia/mês/ano.

  4. Encontre o título, ano de lançamento e duração do empréstimo de todos os filmes com a duração de empréstimo de 3 a 6. Os resultados devem ser classificados em filmes com maior duração de empréstimo primeiro.

  5. Monte um relatório que exiba o título e classificação dos 500 primeiros filmes direcionados para menores de idade. Os resultados devem estar ordenados por classificação mais abrangente primeiro.

# Encontrando e separando resultados que incluem datas
  # Treinando consultas com datas
Você já tem as ferramentas em mãos, então quero ver os dedos se mexendo. Let's GO!!!

  1. Quantos aluguéis temos com a data de retorno 2005-08-29 ? Há múltiplas maneiras possíveis de encontrar a resposta.

  2. Quantos filmes foram alugados entre 01/07/2005 e 22/08/2005 ?

  3. Usando a tabela rental , extraia data, ano, mês, dia, hora, minuto e segundo dos registros com rental_id = 10330.
  
  4. Monte uma query que encontre o id e a data de aluguel do filme que foi alugado no dia 18/08/2005 às 00:14:03.

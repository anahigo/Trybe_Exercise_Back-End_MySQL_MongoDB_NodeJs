# Como utilizar o INNER JOIN
Vamos ver agora alguns desafios para consolidar esse conhecimento sobre o INNER JOIN , utilizando o banco de dados sakila . Antes de começar a escrever suas queries , identifique quais tabelas contêm as informações de que você precisa e como elas estão relacionadas.

1. Monte uma query que exiba o id do ator , nome do ator e id do filme em que ele já atuou usando as tabelas actor e film_actor .

2. Use o JOIN para exibir o nome , sobrenome e endereço de cada um dos funcionários do banco. Use as tabelas staff e address .

3. Exiba o id do cliente , nome e email dos primeiros 100 clientes, ordenados pelo nome em ordem decrescente, juntamente com o id do endereço e o nome da rua onde o cliente mora. Essas informações podem ser encontradas nas tabelas customer e address .

4. Exiba o nome , email , id do endereço , endereço e distrito dos clientes que moram no distrito da California e que contêm "rene" em seus nomes. As informações podem ser encontradas nas tabelas address e customer .

5. Exiba o nome e a quantidade de endereços dos clientes cadastrados. Ordene seus resultados por nomes de forma decrescente. Exiba somente os clientes ativos. As informações podem ser encontradas na tabela address e customer .

6. Monte uma query que exiba o nome , sobrenome e a média de valor ( amount ) paga aos funcionários no ano de 2006. Use as tabelas payment e staff . Os resultados devem estar agrupados pelo nome e sobrenome do funcionário.

7. Monte uma query que exiba o id do ator , nome , id do filme e título do filme , usando as tabelas actor , film_actor e film . Dica: você precisará fazer mais de um JOIN na mesma query .

# O que é SELF JOIN e quando utilizá-lo

Para fixar esses conceitos, tente encontrar as seguintes informações:

1. Queremos saber os ids e custos de substituição dos filmes que possuem o mesmo custo de substituição.

2. Exiba o título e a duração de empréstimo dos filmes que possuem a mesma duração. Exiba apenas os filmes com a duração de empréstimo entre 2 e 4 dias.

# Como unir resultados com o UNION e o UNION ALL

1. Todos os funcionários foram promovidos a atores. Monte uma query que exiba a união da tabela staff com a tabela actor , exibindo apenas o nome e o sobrenome . Seu resultado não deve excluir nenhum funcionário ao unir as tabelas.

2. Monte uma query que una os resultados das tabelas customer e actor , exibindo os nomes que contêm a palavra "tracy" na tabela customer e os que contêm "je" na tabela actor . Exiba apenas os resultados únicos.

3. Monte uma query que exiba a união dos cinco últimos nomes da tabela actor , o primeiro nome da tabela staff e cinco nomes a partir da 15ª posição da tabela customer . Não permita que dados repetidos sejam exibidos. Ordene os resultados em ordem alfabética.

4. Você quer exibir uma lista paginada com os nomes e sobrenomes de todos os clientes e atores do banco de dados, em ordem alfabética. Considere que a paginação está sendo feita de 15 em 15 resultados e que você está na 4ª página. Monte uma query que simule esse cenário.

Hoje você teve o seu primeiro contato com o mundo dos JOINS e UNIONS . Por ser um tema extenso e muito utilizado no dia a dia de desenvolvimento de software, é recomendado que você pratique o máximo possível.

Revise e pratique os conceitos de UNION através destes exercícios .
(https://www.w3schools.com/sql/exercise.asp?filename=exercise_join1)

# Criando queries mais dinâmicas através do EXISTS
  # Vamos Praticar um pouco mais sobre o exists
Use o banco de dados hotel para realizar os desafios a seguir:
(https://course.betrybe.com//back-end/sql/hotel.sql)
1. Usando o EXISTS na tabela books_lent e books , exiba o id e título dos livros que ainda não foram emprestados.

2. Usando o EXISTS na tabela books_lent e books , exiba o id e título dos livros estão atualmente emprestados e que contêm a palavra "lost" no título.

3. Usando a tabela carsales e customers , exiba apenas o nome dos clientes que ainda não compraram um carro.

4. Usando o comando EXISTS em conjunto com JOIN e as tabelas cars , customers e carsales , exiba o nome do cliente e o modelo do carro de todos os clientes que fizeram compras de carros.
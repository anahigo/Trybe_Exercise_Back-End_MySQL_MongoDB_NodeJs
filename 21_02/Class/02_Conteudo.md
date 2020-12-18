# O que é um JOIN ?
Até o momento, você já criou consultas para filtrar, ordenar, selecionar, alterar, agrupar, inserir e apagar dados armazenados nas tabelas dos seus bancos de dados. Cada consulta, no entanto, sempre acessava apenas uma tabela.

Em alguns casos, uma tabela pode não possuir toda a informação necessária. Em função disso, existe a opção de usar os diversos tipos de JOIN para combinar em um mesmo resultado registros de duas ou mais tabelas. Esses tipos são: INNER JOIN , LEFT JOIN e RIGHT JOIN , para combinar duas ou mais tabelas, e SELF JOIN , quando uma tabela precisa ser combinada consigo mesma. Você verá detalhes de cada um desses tipos de JOIN a seguir.

# Como utilizar o INNER JOIN
Assista ao vídeo a seguir para entender como usar o INNER JOIN .

- Vídeo Trybe

Como foi visto no vídeo, o INNER JOIN permite retornar todos os resultados em que a condição da cláusula ON for satisfeita. A sintaxe de um INNER JOIN é a seguinte:

SELECT t1.coluna, t2.coluna
FROM tabela1 AS t1
INNER JOIN tabela2 AS t2
ON t1.coluna_em_comum = t2.coluna_em_comum;

Veja uma representação visual do INNER JOIN abaixo:

  # Por que usamos o alias ( AS )?
O alias AS é usado para apelidar qualquer parte da sua query. Isso ajuda o sistema de banco de dados a identificar a qual coluna estamos nos referindo, evitando erros de ambiguidade de nome de colunas, além de tornar suas queries mais concisas e legíveis.

Por exemplo, observe as queries a seguir:
 **Código sem** `alias`
 ```language-sql SELECT sakila.actor.first_name, actor_id, sakila.film_actor.actor_id FROM sakila.actor INNER join film_actor ON sakila.actor.actor_id = sakila.film_actor.actor_id; ``` O código acima, além de ser muito extenso, não permite que o banco de dados descubra de qual tabela deve trazer o `actor_id`, uma vez que ambas as tabelas, `actor` e `filme_actor`, possuem uma coluna `actor_id`. O seguinte erro será gerado ao tentar executar essa query:

 **Código com** `alias`
 Podemos tornar a query mais legível com um _alias_, além de evitar o erro de ambiquidade de coluna: ```language-sql SELECT a.first_name, a.actor_id, f.actor_id FROM sakila.actor AS a INNER JOIN film_actor AS f ON a.actor_id = f.actor_id; ``` **OBS.:** A palavra-chave `AS` pode ser omitida. Nesse caso, o _alias_ é passado diretamente, após o nome da tabela: ```language-sql SELECT a.first_name, a.actor_id, f.actor_id FROM sakila.actor a INNER JOIN film_actor f ON a.actor_id = f.actor_id; ```

  # Dicas sobre como escolher o tamanho do alias
Sua query é composta de poucas linhas? Então use apenas letras ou a primeira sílaba para representar a coluna. Por exemplo, "actor" se tornaria "A" ou "act" .

Caso esteja montando JOINS com muitas linhas, é recomendado usar um alias mais descritivo para tornar a leitura e interpretação da query mais simples.

Vamos ver agora alguns desafios para consolidar esse conhecimento sobre o INNER JOIN , utilizando o banco de dados sakila . Antes de começar a escrever suas queries , identifique quais tabelas contêm as informações de que você precisa e como elas estão relacionadas.

1. Monte uma query que exiba o id do ator , nome do ator e id do filme em que ele já atuou usando as tabelas actor e film_actor .

2. Use o JOIN para exibir o nome , sobrenome e endereço de cada um dos funcionários do banco. Use as tabelas staff e address .

3. Exiba o id do cliente , nome e email dos primeiros 100 clientes, ordenados pelo nome em ordem decrescente, juntamente com o id do endereço e o nome da rua onde o cliente mora. Essas informações podem ser encontradas nas tabelas customer e address .

4. Exiba o nome , email , id do endereço , endereço e distrito dos clientes que moram no distrito da California e que contêm "rene" em seus nomes. As informações podem ser encontradas nas tabelas address e customer .

5. Exiba o nome e a quantidade de endereços dos clientes cadastrados. Ordene seus resultados por nomes de forma decrescente. Exiba somente os clientes ativos. As informações podem ser encontradas na tabela address e customer .

6. Monte uma query que exiba o nome , sobrenome e a média de valor ( amount ) paga aos funcionários no ano de 2006. Use as tabelas payment e staff . Os resultados devem estar agrupados pelo nome e sobrenome do funcionário.

7. Monte uma query que exiba o id do ator , nome , id do filme e título do filme , usando as tabelas actor , film_actor e film . Dica: você precisará fazer mais de um JOIN na mesma query .

Até o momento, temos produzido resultados apenas quando temos valores correspondentes em ambas as colunas de referência. Porém, o que devemos fazer quando possivelmente apenas uma das tabelas possui um valor correspondente existente? É possível que você tenha que usar o LEFT JOIN ou RIGHT JOIN nessas situações.

# Como utilizar o LEFT JOIN e o RIGHT JOIN
Você precisa encontrar um conjunto de registros, mas não tem certeza se uma das colunas de referência envolvidas possui ou não essa informação. Para que você encontre registros nessa situação, podemos usar o LEFT JOIN ou RIGHT JOIN . Vamos entender melhor com o vídeo a seguir:

- Vídeo Trybe

O conceito de JOIN pode levar um certo tempo para ser compreendido. Sendo assim, vá no seu ritmo, reveja o conteúdo deste dia quantas vezes forem necessárias para compreender bem esse conceito. Pense em perguntas que você gostaria de responder sobre algum de seus bancos de dados que utilizem dados de mais de uma tabela. Abra o Workbench e tente fazer uma query que responda a elas.

# Três queries e uma pergunta
Vamos visualizar a diferença entre os três joins já vistos até o momento. Rode e analise cada uma das três queries a seguir. Busque notar a diferença entre as colunas da direita e da esquerda e a quantidade de dados retornados em cada query , como foi mostrado no vídeo. Gaste de 2 a 5 minutos aqui e depois continue.

  **LEFT JOIN**

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM customer c
LEFT JOIN actor a
ON c.last_name = a.last_name
ORDER BY c.last_name;

  **RIGHT JOIN**

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM customer c
RIGHT JOIN actor a
ON c.last_name = a.last_name
ORDER BY c.last_name;

  **INNER JOIN**

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.actor_id,
    a.first_name,
    a.last_name
FROM customer c
INNER JOIN actor a
ON c.last_name = a.last_name
ORDER BY c.last_name;

  # Notando as diferenças
Depois de ter analisado as queries acima, note que, de fato, a única diferença entre os três joins é a questão do foco. Vamos explorar essa ideia abaixo.

Quando utilizamos o LEFT JOIN , focamos a tabela da esquerda. São retornados todos os registros da tabela esquerda e valores correspondentes da tabela da direita, caso existam . Valores que não possuem correspondentes são exibidos como nulos.

Veja uma representação visual do LEFT JOIN abaixo:

Veja um pouco mais sobre o LEFT JOIN no W3Schools e no MySQLTutorial .

Quando utilizamos o RIGHT JOIN , focamos a tabela da direita. São retornados todos os registros da tabela da direita e valores correspondentes da tabela da esquerda, caso existam . Valores que não possuem correspondentes são exibidos como nulos.

Veja uma representação visual do RIGHT JOIN abaixo:

Você pode ver mais exemplos sobre RIGHT JOIN no W3Schools e no MySQLTutorial .

Finalmente, temos o INNER JOIN , que foca em trazer somente os registros que possuem valores correspondentes em ambas as tabelas .

Novamente, você pode ver uma representação visual do INNER JOIN abaixo:

Até o momento, temos usado mais de uma tabela para analisar dados e gerar informação. No entanto, a informação a ser analisada pode estar concentrada em apenas uma tabela. Nesse cenário, o SELF JOIN pode ser usado para criar resultados relevantes.

# O que é SELF JOIN e quando utilizá-lo
Há certos cenários nos quais faz sentido pesquisar e tirar alguma conclusão analisando apenas uma única tabela. Os tipos de JOIN que você viu até agora precisam necessariamente que mais de uma tabela seja incluída em uma query para que um resultado possa ser gerado. O SELF JOIN não possui esse requisito. Vamos ver a seguir algumas das aplicações do SELF JOIN .

- Vídeo Trybe

Como foi visto no vídeo acima, podemos fazer pesquisas e comparações dentro da própria tabela através do SELF JOIN . Lembre-se dessa opção sempre que a informação que você precisa filtrar ou comparar para encontrar algo estiver em uma única tabela.

Leia mais sobre SELF JOIN no W3Schools e no W3Resource .

Note que um SELF JOIN não é um tipo diferente de JOIN . É apenas um caso em que uma tabela faz join consigo mesma. Você pode utilzar qualquer dos tipos de JOIN vistos ao realizar um SELF JOIN .

Para fixar esses conceitos, tente encontrar as seguintes informações:

1. Queremos saber os ids e custos de substituição dos filmes que possuem o mesmo custo de substituição.

2. Exiba o título e a duração de empréstimo dos filmes que possuem a mesma duração. Exiba apenas os filmes com a duração de empréstimo entre 2 e 4 dias.

Lembre-se de usar o SELF JOIN em situações em que as informações que estiver buscando estejam armazenadas em apenas uma tabela.

A seguir, veremos como é possível combinar os resultados de uma query com outra por meio do UNION .

# Como unir resultados com o UNION e o UNION ALL
Imagine que temos duas tabelas, morning_events e night_events , e que essas tabelas possuem os nomes das pessoas que compareceram a esses dois tipos diferentes de eventos. Porém, queremos uma lista agregada de todas as pessoas que estão cadastradas, independente do tipo de evento a que compareceram.

Essa situação é um dos cenários que podem ser resolvidos através do UNION . O UNION nos permite unir os registros de uma tabela com outra, desde que usemos a mesma quantidade de colunas. Vamos explorar outras possibilidades no vídeo a seguir:

- Vídeo Trybe

Como foi visto no vídeo, podemos utilizar este comando de duas maneiras: UNION e UNION ALL .

O UNION remove os dados duplicados, enquanto o UNION ALL os mantém. Observe que, para usar o comando corretamente, a mesma quantidade de colunas deve ser utilizada.

Vamos trabalhar agora com alguns desafios sobre o UNION :

1. Todos os funcionários foram promovidos a atores. Monte uma query que exiba a união da tabela staff com a tabela actor , exibindo apenas o nome e o sobrenome . Seu resultado não deve excluir nenhum funcionário ao unir as tabelas.

2. Monte uma query que una os resultados das tabelas customer e actor , exibindo os nomes que contêm a palavra "tracy" na tabela customer e os que contêm "je" na tabela actor . Exiba apenas os resultados únicos.

3. Monte uma query que exiba a união dos cinco últimos nomes da tabela actor , o primeiro nome da tabela staff e cinco nomes a partir da 15ª posição da tabela customer . Não permita que dados repetidos sejam exibidos. Ordene os resultados em ordem alfabética.

4. Você quer exibir uma lista paginada com os nomes e sobrenomes de todos os clientes e atores do banco de dados, em ordem alfabética. Considere que a paginação está sendo feita de 15 em 15 resultados e que você está na 4ª página. Monte uma query que simule esse cenário.

Hoje você teve o seu primeiro contato com o mundo dos JOINS e UNIONS . Por ser um tema extenso e muito utilizado no dia a dia de desenvolvimento de software, é recomendado que você pratique o máximo possível.

Revise e pratique os conceitos de UNION através destes exercícios .
(https://www.w3schools.com/sql/exercise.asp?filename=exercise_join1)

# Como utilizar uma SUBQUERY
Caso não tenha percebido, estamos usando subqueries há algumas aulas.

Uma SUBQUERY é uma query aninhada que é avaliada dentro de um par de parênteses. Ela pode conter expressões simples, como adições e subtrações, mas não se limita a isso, uma vez que podemos utilizar praticamente todos os comandos já vistos até o momento dentro de uma SUBQUERY .

Algo a se lembrar é que a subquery não é a única maneira de encontrar resultados de tabelas relacionadas. Quando se trata de SQL, os JOINs podem ser usados para encontrar os mesmos resultados.

É recomendado tomar a decisão sobre qual opção utilizar (subquery ou JOIN ) baseando-se na performance da sua query.

  # Diferentes maneiras de utilizar uma SUBQUERY
1. Usando uma SUBQUERY como fonte de dados para o FROM .

SELECT f.title, f.rating
FROM (
    SELECT *
    FROM sakila.film
    WHERE rating = 'R'
) AS f;

2. Preenchendo uma coluna de um SELECT por meio de uma SUBQUERY .

SELECT
    address,
    district,
    (
        SELECT city
        FROM sakila.city
        WHERE city.city_id = sakila.address.city_id
    ) AS city
FROM sakila.address;

3. Filtrando resultados com WHERE usando como base os dados retornados de uma SUBQUERY .

SELECT address, district
FROM sakila.address
WHERE city_id in (
    SELECT city_id
    FROM sakila.city
    WHERE city in ('Sasebo', 'San Bernardino', 'Athenai', 'Myingyan')
);

4. Usando uma tabela externa, de fora da SUBQUERY , dentro dela.

SELECT
    first_name,
    (
        SELECT address
        FROM sakila.address
        WHERE address.address_id = tabela_externa.address_id
    ) AS address
FROM sakila.customer AS tabela_externa;

  # SUBQUERY ou JOIN

Talvez você esteja se perguntando se seria possível resolver as queries anteriores através de um JOIN . De fato, podemos, como é exemplificado a seguir.

Usando SUBQUERY

SELECT
    first_name,
    (
        SELECT address
        FROM sakila.address
        WHERE address.address_id = tabela_externa.address_id
    ) AS address
FROM sakila.customer AS tabela_externa;

Usando INNER JOIN

SELECT c.first_name, ad.address
FROM sakila.customer c
INNER JOIN sakila.address ad ON c.address_id = ad.address_id;

Sabendo disso, como decidir entre as duas abordagens? Decida qual usar através de testes de performance e, em seguida, por afinidade.
  # Uma maneira simples de mensurar a performance e decidir sobre qual abordagem utilizar (Execution Plan)

Diferente da maioria dos problemas que as pessoas desenvolvedoras resolvem, é possível decidir por queries melhores que outras através da medição do seu custo de execução.

Existem diversas maneiras para mensurar a performance e otimizar queries no MySQL Server. Temos carreiras inteiras baseadas nisso. Nesta aula, iremos abordar apenas uma delas: o execution plan .

Ele mensura o custo de uma query e exibe o tipo de scan efetuado em cada tabela incluída na query e seu custo total. Seu uso na prática pode ser visto da seguinte forma:

Tomando como exemplo as duas últimas queries desta página, crie dois novos arquivos SQL no seu MySQl Workbench. Em um deles, cole a query em que utilizamos a solução usada como SUBQUERY e, no outro, a que se utilizou como INNER JOIN .

Em seguida, execute uma das queries e depois clique em Execution Plan , como na imagem abaixo, e observe o valor de "Query Cost". Quanto menor o valor, em comparação com outra versão da query, melhor a performance. Assim você pode simplesmente escolher a query que tem o menor custo.

Execute os comandos acima e verifique o custo de cada query. Ficou claro que, nesse caso específico, a SUBQUERY tem uma performance melhor que o JOIN , em razão de ter o custo de query mais baixo.

# Criando queries mais dinâmicas através do EXISTS
  # Antes de iniciar essa seção:

Os bancos de dados utilizados no vídeo podem ser acessados nos links a seguir.

Banco de dados praticando : link .
(https://course.betrybe.com//back-end/sql/praticando.sql)

Banco de dados hotel : link .
(https://course.betrybe.com//back-end/sql/hotel.sql)

Para usá-los em seu computador, copie o código disponilizado em cada link e restaure cada um utilizando o MySQL Workbench, selecionando todo código e clicando no botão de raio para executar o script de restauração.

Vamos entender melhor como utilizar o EXISTS no vídeo a seguir:

- Vídeo Trybe

Após a explicação acima, é bom enfatizar aqui que o intuito principal do EXISTS é:

Retornar os registros da tabela A que possuem um relacionamento com os registros da tabela B.

Para mais exemplos sobre como utilizar o EXISTS , recomendamos a seguinte leitura .

  # Vamos Praticar um pouco mais sobre o exists
Use o banco de dados hotel para realizar os desafios a seguir:
(https://course.betrybe.com//back-end/sql/hotel.sql)
1. Usando o EXISTS na tabela books_lent e books , exiba o id e título dos livros que ainda não foram emprestados.

2. Usando o EXISTS na tabela books_lent e books , exiba o id e título dos livros estão atualmente emprestados e que contêm a palavra "lost" no título.

3. Usando a tabela carsales e customers , exiba apenas o nome dos clientes que ainda não compraram um carro.

4. Usando o comando EXISTS em conjunto com JOIN e as tabelas cars , customers e carsales , exiba o nome do cliente e o modelo do carro de todos os clientes que fizeram compras de carros.

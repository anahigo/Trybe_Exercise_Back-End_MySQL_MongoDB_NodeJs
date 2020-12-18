# Entregando resultados mais exatos através do WHERE
Sakila mode ON! Vamos abrir nosso banco de dados sakila e aprender a lidar com o WHERE e com os principais comparadores lógicos:

- Vídeo Trybe

PS: Além da informação passada no vídeo, é importante relembrar a precedência dos operadores .

Ordem dos operadores
  1. Parênteses,
  2. Multiplicação, Divisão,
  3. Subtração, Adição,
  4. Not,
  5. And,
  6. Or. 

Sendo assim, quando se faz a seguinte query :

SELECT * FROM sakila.payment
WHERE amount = 0.99 OR amount = 2.99 AND staff_id = 2;

Como o operador AND tem preferência sobre o operador OR , ele é avaliado primeiro. Então os registros buscados são aqueles nos quais amount = 2.99 e staff_id = 2 . Na sequência, são buscados os registros nos quais amount = 0.99 , independente do valor de staff_id . Os valores retornados serão os resultados dessas duas buscas. Ou seja, a query é executada como se tivesse os seguintes parênteses: amount = 0.99 OR (amount = 2.99 AND staff_id = 2) .

Agora, quando executar a seguinte query :

SELECT * FROM sakila.payment
WHERE (amount = 0.99 OR amount = 2.99) AND staff_id = 2;

Primeiramente, a expressão dentro dos parênteses é avaliada, e todos os resultados que satisfazem a condição amount = 0.99 OR amount = 2.99 são retornados. Na sequência, a expressão do lado direito do AND é avaliada, e todos os resultados que satisfazem a condição staff = 2 são retornados. O AND então compara o resultado de ambos os lados e faz com que somente os resultados que satisfazem ambas as condições sejam retornados.

# Alavancando o poder dos principais operadores boleanos e relacionais
Como foi exibido no vídeo acima, de forma geral, temos os seguintes operadores:

-- OPERADOR - DESCRIÇÃO
=   IGUAL
>   MAIOR QUE
<   MENOR QUE
>=  MAIOR QUE OU IGUAL
<=  MENOR QUE OU IGUAL
<>  DIFERENTE DE
AND OPERADOR LÓGICO E
OR  OPERADOR LÓGICO OU
NOT NEGAÇÃO
IS  COMPARA COM VALORES BOOLEANOS (TRUE, FALSE, NULL)

Depois de ter assistido ao vídeo acima, você já deve ter agora uma noção do que pode ser feito com os operadores do SQL e de como é possível combiná-los para trazer relatórios ainda mais granulares. Vamos buscar algumas informações no nosso banco de dados para consolidar esse aprendizado.

Dica final: Sempre se atente a essa ordem de precedência para que consiga montar suas queries de acordo com o que precisa. Na dúvida, use parênteses.

A tabela a seguir é um guia de como a classificação indicativa é usada no banco de dados sakila . Consulte-a ao fazer os desafios propostos.

G = permitido para todos
PG = permitido para crianças menores de 13 anos
PG-13 = permitido para pessoas com mais de 13 anos
R = permitido para pessoas com mais de 17 anos
NC-17 = permitido apenas para adultos

Entre no banco de dados sakila e siga as instruções (e guarde as queries para conferir posteriormente):
  1. Precisamos identificar o cliente com o e-mail LEONARD.SCHOFIELD@sakilacustomer.org.

  2. Precisamos de um relatório dos nomes, em ordem alfabética, dos clientes que não estão mais ativos no nosso sistema e pertencem à loja com o id 2. Porém, não inclua o cliente KENNETH no resultado.

  3. O setor financeiro quer saber nome, descrição, ano de lançamento e quais são os 100 filmes com o maior custo de substituição, do valor mais alto ao mais baixo, entre os filmes feitos para menores de idade e que têm o custo mínimo de substituição de $18,00 dólares.

  4. Quantos clientes estão ativos e na loja 1?

  5. Mostre todos os detalhes dos clientes que não estão ativos na loja 1.

  6. Precisamos descobrir quais são os 50 filmes feitos para maiores de 17 anos e adultos com a menor taxa de aluguel, para que possamos fazer uma divulgação melhor desses filmes.

Você vai se deparar também com casos em que você só tem parte de uma informação, ou em que precisa criar queries mais dinâmicas. Para esses casos, temos o LIKE . Como assim? É o que veremos a seguir.

# Como criar pesquisas mais dinâmicas e maleáveis usando o LIKE
Você está tentando se lembrar do nome de um filme a que já assistiu, mas só se lembra de que ele terminava com don no nome. Como seria possível usar o LIKE para te ajudar a encontrá-lo?

SELECT * FROM sakila.film
WHERE title LIKE '%don';

O LIKE é usado para buscar por meio de uma sequência específica de caracteres, como no exemplo acima. Além disso, dois "curingas", ou modificadores, são normalmente usados com o LIKE :
  . % - O sinal de percentual, que pode representar zero, um ou múltiplos caracteres

  . _ - O underscore (às vezes chamado de underline, no Brasil), que representa um único caractere

Vamos ver abaixo como usá-los (todos podem ser verificados no banco sakila )

-- Encontra qualquer resultado finalizando com "don"
WHERE title LIKE '%don';

-- Encontra qualquer resultado iniciando com "plu"
WHERE title LIKE 'plu%';

-- Encontra qualquer resultado que contém "plu"
WHERE title LIKE '%plu%';

-- Encontra qualquer resultado que inicia com "p" e finaliza com "r"
WHERE title LIKE 'p%r';

-- Encontra qualquer resultado em que o segundo caractere da frase é "C"
WHERE title LIKE '_C%';

-- Encontra qualquer resultado em que o título possui exatamente 8 caracteres
WHERE title LIKE '________';

-- Encontra todas as palavras com no mínimo 3 caracteres e que iniciam com E
WHERE title LIKE '%E__';

Para consolidar esse conhecimento, brinque com os resultados que serão encontrados usando os comandos acima e tente criar suas próprias condições. Depois de ter praticado um pouco com eles, tente encontrar as seguintes informações:
  1. Encontre todos os detalhes dos filmes que contêm a palavra " ace " no nome.

  2. Encontre todos os detalhes dos filmes cujas descrições finalizam com " china ".

  3. Encontre todos os detalhes dos dois filmes cujas descrições contêm a palavra " girl " e o título finaliza com a palavra " lord ".

  4. Encontre os dois casos em que, a partir do 4° caractere no título do filme, tem-se a palavra " gon ".

  5. Encontre os dois casos em que, a partir do 4° caractere no título do filme, tem-se a palavra " gon " e a descrição contém a palavra " Documentary ".

  6. Encontre os dois filmes cujos títulos ou finalizam com " academy " ou inciam com " mosquito ".

  7. Encontre os seis filmes que contêm as palavras " monkey " e " sumo " em suas descrições.

A seguir, vamos entender como trazer resultados que englobam uma faixa de valores usando os operadores IN e BETWEEN.

# Englobando uma faixa de resultados com IN e BETWEEN
  # Operador IN
Como você viu no início do dia hoje, é possível juntar várias condições nas suas queries usando os operadores AND e OR . No entanto, você ainda terá que digitar cada condição separadamente, como no exemplo a seguir:

SELECT * FROM sakila.actor
WHERE first_name = 'PENELOPE'
OR first_name = 'NICK'
OR first_name = 'ED'
OR first_name = 'JENNIFER';

Uma forma melhor de fazer essa mesma pesquisa seria usando o IN :

SELECT * FROM sakila.actor
WHERE first_name IN ('PENELOPE','NICK','ED','JENNIFER');

Você poderia fazer esse mesmo processo para números também:

SELECT * FROM sakila.customer
WHERE customer_id in (1, 2, 3, 4, 5);

Então, para que você faça pesquisas utilizando o IN , a sintaxe que deve ser usada é a seguinte:

SELECT * FROM banco_de_dados
WHERE coluna IN (valor1, valor2, valor3, valor4, ..., valorN);

-- ou também
SELECT * FROM banco_de_dados
WHERE coluna IN (expressão);

  . Como você faria, então, para encontrar, usando o IN , todos os detalhes sobre o aluguel dos clientes com os seguintes ids: 269, 239, 126, 399, 142?

  . Como encontraria todas as informações sobre os endereços que estão registrados nos distritos de QLD, Nagasaki, California, Attika, Mandalay, Nantou e Texas?

  # Operador BETWEEN
Uma outra opção quando queremos trabalhar com faixas de resultados é o BETWEEN , que torna possível fazer pesquisas dentro de uma faixa inicial e final.

expressão BETWEEN valor1 AND valor2;
-- a expressão é a sua query
-- e valor1 e valor2 delimitam o resultado

Então, quando você faz uma query como essa, você terá o resultado da imagem a seguir:

-- Note que o MySQL inclui o valor inicial e o final nos resultados
SELECT title, length FROM sakila.film
WHERE length BETWEEN 50 AND 120;

  # Usando o BETWEEN com strings
Para encontrar uma faixa de valores em que os valores são strings, podemos digitar a palavra por completo para encontrar os valores. Exemplo:

SELECT * FROM sakila.language
WHERE name BETWEEN 'Italian' AND 'Mandarin'
ORDER BY name;

  # Usando o BETWEEN com datas
Para usar o BETWEEN com datas, basta que você digite o valor no formato padrão da data, que é YYYY-MM-DD HH:MM:SS , sendo os valores de horas, minutos e segundos opcionais. No exemplo abaixo, estamos filtrando os resultados para exibir o rental_id e rental_date apenas entre o mês 05 e o mês 07:

SELECT rental_id, rental_date FROM sakila.rental
WHERE rental_date
BETWEEN '2005-05-27' AND '2005-07-17';

  # Como decidir qual usar?
Lembre-se de que, no caso do IN , você precisa especificar os valores que devem ser incluídos no resultado e, no caso do BETWEEN , você não precisa incluir os valores que estão entre o valor inicial e final. Então, vale a pena analisar essa diferença e ver qual te atenderá melhor.

  # Qual tem a melhor performance?
A melhor forma de responder a essa pergunta é: depende .

Não é o que você esperava? Então vai aqui uma resposta melhor: isso vai depender do tipo e quantidade de dados com os quais você está trabalhando. A melhor forma de você não chutar é clicar no botão Execution Plan no MySQL Workbench e verificar o tempo de execução para tomar a decisão de qual tem o menor custo de execução - o que significa que a query finalizará mais rápido.

Há outras ferramentas inteiras só para mensurar performance. Considere o Execution Plan apenas uma introdução ao tema.

Fazendo um pequeno teste, temos os seguintes resultados (que podem sofrer alterações, dependendo da quantidade de dados com os quais se está trabalhando):

No final das contas, depois de analisar questões como performance, você poderá tomar sua decisão sobre qual usar com mais segurança!

  # Consolidando o conhecimento
  1. Encontre o nome, sobrenome e e-mail dos clientes com os seguintes sobrenomes: hicks, crawford, henry, boyd, mason, morales e kennedy, ordenados por nome em ordem alfabética.

  2. Encontre o e-mail dos clientes com os address_id 172, 173, 174, 175 e 176, ordenados em ordem alfabética.

  3. Descubra quantos pagamentos foram feitos entre 01/05/2005 e 01/08/2005. Lembre-se de que, no banco de dados, as datas estão armazenadas no formato ano/mês/dia, diferente do formato brasileiro, que é dia/mês/ano.

  4. Encontre o título, ano de lançamento e duração do empréstimo de todos os filmes com a duração de empréstimo de 3 a 6. Os resultados devem ser classificados em filmes com maior duração de empréstimo primeiro.

  5. Monte um relatório que exiba o título e classificação dos 500 primeiros filmes direcionados para menores de idade. Os resultados devem estar ordenados por classificação mais abrangente primeiro.

P.S. As classificações podem ser verificadas acima, na seção "Alavancando o poder dos principais comparadores lógicos".

# Encontrando e separando resultados que incluem datas
No MySQL, o tipo DATE faz parte dos tipos de dados temporais , os quais vamos ver com mais detalhes no decorrer do curso. O MySQL , por padrão, usa o formato YYYY-MM-DD (ano/mês/dia) ao armazenar os valores de uma data. Você é obrigado, pelo banco de dados, a salvar nesse formato, e não é possível alterá-lo. Temos também o tipo DATETIME , que inclui informações de tempo. Vamos ver dois tipos comuns a seguir:
  - DATE - Possui apenas data, no formato YYYY-MM-DD na faixa de 1001-01-01 até 9999-12-31

  - DATETIME - Possui data e tempo, no formato YYYY-MM-DD HH:MM:SS com a faixa de 1000-01-01 00:00:00 até 9999-12-31 23:59:59 .

Se você pesquisar agora no banco sakila usando a seguinte query :

SELECT * FROM sakila.payment;

É possível confirmar que a coluna payment_date é exibida no formato YYYY-MM-DD HH:MM:SS . Assim, para fazer pesquisas e filtrar dados baseados em datas, temos que ter sempre isso em mente: quando você pensar no dia de 25 de dezembro de 2020, para o banco dados, esse dia será 2020-12-25 .

  # Maneiras de encontrar dados por data
Vamos dizer que queremos encontrar pagamentos realizados na data 2005-07-31 na tabela sakila.payment . Há várias formas de fazer isso.

Usando a função DATE(coluna_do_tipo_date) :

-- Encontra todos os pagamentos deste dia, ignorando horas, minutos e segundos
SELECT * FROM sakila.payment
WHERE DATE(payment_date) = '2005-07-31';

Usando LIKE para valores aproximados:

-- Encontra todos pagamentos deste dia, ignorando horas, minutos e segundos
SELECT * FROM sakila.payment
WHERE payment_date LIKE '2005-07-31%';

-- Encontra um pagamento com dia e hora exatos
SELECT * FROM sakila.payment
WHERE payment_date LIKE '2005-08-20 00:30:52';

Usando BETWEEN :

-- Encontra pagamentos especificando um valor mínimo e um valor máximo para a data

SELECT *
FROM sakila.payment
WHERE payment_date BETWEEN '2005-05-26 00:00:00' AND '2005-05-27 23:59:59';

Qual é mais performática ? Use o Execution Plan para determinar isso.

  # Selecionando apenas partes de uma data
Às vezes você está interessado em apenas uma parte de uma data, como o ano ou as horas. MySQL possui funções que retornam partes específicas de uma data ou hora.

-- Teste cada um dos comandos a seguir:
SELECT DATE(payment_date) FROM sakila.payment; -- YYYY-MM-DD
SELECT YEAR(payment_date) FROM sakila.payment; -- Ano
SELECT MONTH(payment_date) FROM sakila.payment; -- Mês
SELECT DAY(payment_date) FROM sakila.payment; -- Dia
SELECT HOUR(payment_date) FROM sakila.payment; -- Hora
SELECT MINUTE(payment_date) FROM sakila.payment; -- Minuto
SELECT SECOND(payment_date) FROM sakila.payment; -- Segundo

  # Treinando consultas com datas
Você já tem as ferramentas em mãos, então quero ver os dedos se mexendo. Let's GO!!!

  1. Quantos aluguéis temos com a data de retorno 2005-08-29 ? Há múltiplas maneiras possíveis de encontrar a resposta.

  2. Quantos filmes foram alugados entre 01/07/2005 e 22/08/2005 ?

  3. Usando a tabela rental , extraia data, ano, mês, dia, hora, minuto e segundo dos registros com rental_id = 10330.

  4. Monte uma query que encontre o id e a data de aluguel do filme que foi alugado no dia 18/08/2005 às 00:14:03.

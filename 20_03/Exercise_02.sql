/*
Exercício 2: 
Exercício 2.1: 
Leia as notas sobre esta tabela. Observe o resultado da execução deste comando SQL para mostrar o nome, continente e população de todos os países.
SELECT name, continent, population FROM world
*/

SELECT name, continent, population FROM world

/*
Exercício 2.2: 
Como usar WHERE para filtrar registros. Mostre o nome dos países que têm uma população de pelo menos 200 milhões. 200 milhões é 200000000, há oito zeros.
SELECT name FROM world
WHERE population = 64105700
*/

SELECT name FROM world
WHERE population > 200000000

/*
Exercício 2.3: 
Dê o name eo capita PIB per para os países com um populationde pelo menos 200 milhões.

AJUDA: Como calcular o PIB per capita
*/

SELECT name, gdp/population FROM world
WHERE population > 200000000


/*
Exercício 2.4: 
Mostrar o name e population em milhões para os países da continent'América do Sul'. Divida a população por 1000000 para obter a população em milhões.
*/

SELECT name, population/1000000 FROM world
WHERE continent = 'South America'

/*
Exercício 2.5: 
Mostrar o name e population para França, Alemanha, Itália
*/

SELECT name, population FROM world
WHERE name IN ('France', 'Germany', 'Italy');

/*
Exercício 2.6: 
Mostre os países que têm um name que inclui a palavra 'Unidos'
*/

SELECT name FROM world
  WHERE name LIKE '%United%';

/*
Exercício 2.7: 
Duas maneiras de ser grande: um país é grande se tiver uma área de mais de 3 milhões de quilômetros quadrados ou se tiver uma população de mais de 250 milhões.

Mostre os países que são grandes em área ou grandes em população. Mostrar nome, população e área.
*/

SELECT name, population, area FROM world
WHERE area > 3000000 OR population > 250000000;

/*
Exercício 2.8: 
OU exclusivo (XOR). Mostre os países que são grandes em área (mais de 3 milhões) ou grandes em população (mais de 250 milhões), mas não ambos. Mostrar nome, população e área.

A Austrália tem uma grande área, mas uma pequena população, deve ser incluída .
A Indonésia tem uma grande população, mas uma pequena área, deveria ser incluída .
A China tem uma grande população e grande área, deveria ser excluída .
O Reino Unido tem uma pequena população e uma pequena área, deveria ser excluído .
*/

SELECT name, population, area FROM world
WHERE area > 3000000 XOR population > 250000000;

/*
Exercício 2.9: 
Mostre o namee populationem milhões e o PIB em bilhões para os países da continent'América do Sul'. Use a função ROUND para mostrar os valores com duas casas decimais.

Para a América do Sul, mostre população em milhões e PIB em bilhões, ambos com 2 casas decimais.
Milhões e bilhões
*/

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world
WHERE continent = 'South America'

/*
Exercício 2.10: 
Mostre o name PIB per capita e para os países com um PIB de pelo menos um trilhão (1000000000000; ou seja, 12 zeros). Arredonde esse valor para os 1000 mais próximos.

Mostre o PIB per capita para os países de trilhões de dólares com aproximação de $ 1000.
*/

SELECT name, ROUND(gdp/population, -3) FROM world
WHERE GDP > 1000000000000

/*
Exercício 2.11: 
A Grécia tem a capital Atenas.
Cada uma das strings 'Grécia' e 'Atenas' tem 6 caracteres.
Mostre o nome e a capital onde o nome e a capital têm o mesmo número de caracteres.
Você pode usar a função LENGTH para encontrar o número de caracteres em uma string

SELECT name,      LENGTH(name),
       continent, LENGTH(continent),
       capital, LENGTH(capital)
  FROM world
 WHERE name LIKE 'G%'
*/

SELECT name, capital FROM world
WHERE LENGTH(name) = LENGTH(capital) 

/*
Exercício 2.12: 
A capital da Suécia é Estocolmo. Ambas as palavras começam com a letra 'S'.
Mostre o nome e a maiúscula onde estão as primeiras letras de cada correspondência. Não inclua países onde o nome e a capital são a mesma palavra.
Você pode usar a função LEFT para isolar o primeiro caractere.
Você pode usar <>como o operador NOT EQUALS .

SELECT name, LEFT(name,1), capital
FROM world
*/

SELECT name, capital FROM world
WHERE LEFT(name,1) = LEFT(capital,1) 
AND name NOT LIKE capital

/*
Exercício 2.13: 
Guiné Equatorial e República Dominicana têm todas as vogais (aeiou) no nome. Eles não contam porque têm mais de uma palavra no nome.
Encontre o país que contém todas as vogais e nenhum espaço no nome.
Você pode usar a frase name NOT LIKE '%a%'para excluir caracteres de seus resultados.
A consulta mostrada perde países como Bahamas e Bielo-Rússia porque contêm pelo menos um 'a'

SELECT name
   FROM world
WHERE name LIKE 'B%'
  AND name NOT LIKE '%a%'
*/

SELECT name FROM world
WHERE name NOT LIKE '% %' 
AND name LIKE '%a%' 
AND name LIKE '%e%' 
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
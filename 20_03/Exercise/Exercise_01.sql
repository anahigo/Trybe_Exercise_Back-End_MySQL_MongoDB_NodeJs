/*
Exercício 1: 
Exercício 1.1: 
Você pode usar WHERE name LIKE 'B%'para encontrar os países que começam com "B".
O % é um curinga que pode corresponder a qualquer caractere
Encontre o país que começa com Y
SELECT name FROM world
WHERE name LIKE 'F%';
*/

SELECT name FROM world
  WHERE name LIKE 'Y%';

/*
Exercício 1.2: 
Encontre os países que terminam com y
SELECT name FROM world
  WHERE name LIKE 'T%'
*/

SELECT name FROM world
  WHERE name LIKE '%Y'

/*
Exercício 1.3: 
Luxemburgo tem um x - o mesmo ocorre com outro país. Liste os dois.
Encontre os países que contêm a letra x

SELECT name FROM world
  WHERE name LIKE 'T%'
*/

SELECT name FROM world
WHERE name LIKE '%X%'


/*
Exercício 1.4: 
Islândia, Suíça terminam com terras - mas existem outras?
Encontre os países que terminam com terra
SELECT name FROM world
WHERE name LIKE 'T%'
*/

SELECT name FROM world
WHERE name LIKE '%LAND'

/*
Exercício 1.5: 
Columbia começa com C e termina com ia - há mais dois como este.
Encontre os países que começam com C e terminam com ia
SELECT name FROM world
  WHERE name LIKE 'T%'
*/

SELECT name FROM world
WHERE name LIKE 'C%' AND name LIKE '%IA'

/*
Exercício 1.6: 
A Grécia tem um duplo e - quem tem um duplo o ?
Encontre o país que tem oo no nome
SELECT name FROM world
  WHERE name LIKE '%ee%'
*/

SELECT name FROM world
WHERE name LIKE '%OO%'

/*
Exercício 1.7: 
Bahamas tem três a - quem mais?
Encontre os países que têm três ou mais a no nome
SELECT name FROM world
  WHERE name LIKE 3 * 'A%'
*/

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

/*
Exercício 1.8: 
Índia e Angola têm um n como o segundo caractere. Você pode usar o sublinhado como um caractere curinga único.
SELECIONE o  nome  FROM  mundo 
 ONDE  nome  LIKE  '_n%' 
ORDEM  POR  nome
Encontre os países que têm "t" como segundo caractere.
SELECT name FROM world
 WHERE name LIKE '_n%'
ORDER BY name
*/

SELECT name FROM world
WHERE name LIKE '_T%'


/*
Exercício 1.9: 
Les o th o e M o ld o va têm dois caracteres separados por dois outros caracteres.
Encontre os países que têm dois caracteres "o" separados por dois outros.
SELECT name FROM world
 WHERE name LIKE '_n%'
*/

SELECT name FROM world
 WHERE name LIKE '%O__O%'

/*
Exercício 1.10: 
Cuba e Togo têm nomes de quatro personagens.
Encontre os países que têm exatamente quatro caracteres.
SELECT name FROM world
 WHERE name LIKE 'Cu%'
*/

SELECT name FROM world
 WHERE name LIKE '____'

/*
Exercício 1.11: 
A capital do Luxemburgo é o Luxemburgo . Mostra todos os países onde a capital é igual ao nome do país
Encontre o país cujo nome é a capital.
SELECT name, capital, continent
  FROM world
 WHERE name LIKE '%x%'
*/

SELECT name FROM world
 WHERE name LIKE  capital

/*
Exercício 1.12: 
A capital do México é a Cidade do México . Mostra todos os países onde a capital tem o país junto com a palavra "Cidade".
Encontre o país onde a capital é o país mais "Cidade".
A função concat
SELECT name, concat(name, 'town')
  FROM world
 WHERE name LIKE '%ina%'
*/

SELECT name FROM world
WHERE capital LIKE '%City'

/*
Exercício 1.13: 
Encontre a capital e o nome onde a capital inclui o nome do país.
*/

SELECT capital, name FROM world 
WHERE capital LIKE CONCAT('%', name, '%');

/*
Exercício 1.14: 
Encontre a capital e o nome onde a capital é uma extensão do nome do país.
Você deve incluir a Cidade do México, pois ela é mais longa do que o México . Você não deve incluir Luxemburgo, pois a capital é igual ao país.
*/

SELECT capital, name
FROM world
WHERE capital LIKE CONCAT(name, '%') 
AND name != capital

/*
Exercício 1.15: 
Para Monaco-Ville, o nome é Monaco e a extensão é -Ville .
Mostra o nome e a extensão onde a capital é uma extensão do nome do país.
Você pode usar a função SQL REPLACE .
*/

SELECT name, REPLACE(capital, name, '') FROM world 
WHERE capital LIKE CONCAT('%', name, '%') AND capital > name;
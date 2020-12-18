/*
Exercício 1: 
Exercício 1.1: 
O exemplo usa uma cláusula WHERE para mostrar a população da 'França'. Observe que as strings (pedaços de texto que são dados) devem estar entre 'aspas simples'; 
Modifique-o para mostrar a população da Alemanha

SELECT population FROM world
WHERE name = 'France'
*/

SELECT population FROM world
  WHERE name = 'Germany';

/*
Exercício 1.2: 
Verificando uma lista A palavra IN nos permite verificar se um item está em uma lista. O exemplo mostra o nome e a população dos países 'Brasil', 'Rússia', 'Índia' e 'China'.
Mostre o nome e a população para 'Suécia', 'Noruega' e 'Dinamarca'.

SELECT name, population FROM world
  WHERE name IN ('Brazil', 'Russia', 'India', 'China');
*/

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

/*
Exercício 1.2: 
Quais países não são muito pequenos nem muito grandes? BETWEEN permite a verificação de intervalo (o intervalo especificado inclui os valores de limite). O exemplo abaixo mostra países com uma área de 250.000 a 300.000 km2. Modifique-o para mostrar o país e a área para países com uma área entre 200.000 e 250.000.

SELECT name, area FROM world
  WHERE area BETWEEN 250000 AND 300000
*/

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
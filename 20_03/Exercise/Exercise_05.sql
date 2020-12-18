/*
Exercício 5 : 
Exercício 5.1:
 Escolha o código que mostra o nome dos nomes dos vencedores começando com C e terminando com n

a. 
SELECT name
  FROM world
 WHERE name
 BEGIN with U

b.
SELECT name
  FROM world
 WHERE name LIKE '%U'

c.
SELECT name
  FROM world
 WHERE name LIKE '%u%'

d.
SELECT name
  FROM world
 WHERE name LIKE U

e.
SELECT name
  FROM world
 WHERE name LIKE 'U%'
*/

-- e

/*
Exercício 5.2:
Selecione o código que mostra apenas a população do Reino Unido?

a.
SELECT population
  FROM 'United Kingdom'

b.
SELECT name
  FROM world
 WHERE population = 'United Kingdom'

c.
SELECT FROM world
 WHERE population IN 'United Kingdom'

d.
SELECT population
  FROM world
 WHERE name = 'United Kingdom'

e.
SELECT population
  FROM world
 WHERE 'United Kingdom' IN name
*/

-- d

/*
Exercício 5.3:
Selecione a resposta que mostra o problema com este código SQL - o resultado pretendido deve ser o continente da França:
 SELECT continent 
   FROM world 
  WHERE 'name' = 'France'

a.
continent should be 'continent'

b. 
'name' should be name

c. 
'France' should be "France"

d. 
'France' should be France

e.
= should be IN
*/

-- b

/*
Exercício 5.4:
 SELECT name, population / 10 
  FROM world 
 WHERE population < 10000

a.
Andorra	6400
Nauru	990

b.
Andorra	64000
Nauru	9900

c.
Nauru	99

d.
Nauru	990

e.
Nauru	9900
*/

-- d

/*
Exercício 5.5:
Selecione o código que revelaria o nome e a população dos países da Europa e da Ásia

a.
SELECT name
  FROM world 
 WHERE continent IN ('Europe', 'Asia')

b.
SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')

c.
SELECT name, population
  FROM world
 WHERE name IN (Europe Asia)

d.
SELECT name, population
  FROM world
 WHERE name IS ('Europe', 'Asia')

e.
SELECT name, population
  FROM world
 WHERE continent = ('Europe', 'Asia')
*/

-- b

/*
Exercício 5.6:
Selecione o código que daria duas linhas

a.
SELECT name FROM world
 WHERE name = 'Cuba'

b.
SELECT name FROM world
 WHERE name = 'Cuba'
   AND name = 'Togo'

c.
SELECT name FROM world
 WHERE name EITHER ('Cuba', 'Togo')

d.
SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')

e. 
SELECT name FROM WHERE name IS 'Mali'
*/

-- d
                  
/*
Exercício 5.7:
Selecione o resultado que seria obtido a partir deste código:
SELECT name FROM world
 WHERE continent = 'South America'
   AND population > 40000000

a.
Afghanistan
Brazil
Colombia

b.
Brazil

c.
Brazil
Colombia

d.
Brazil	South America
Colombia	South America

e.
Brazil	182800000
Colombia	45600000
*/

-- c
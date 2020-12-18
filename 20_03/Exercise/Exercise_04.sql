/*
Exercício 4 : 
Exercício 4.1:
Selecione o código que produz esta tabela
name	         population
Bahrain	       1234571
Swaziland	     1220000
Timor-Leste	   1066409

a. 
FROM world
SELECT name, population BETWEEN 1000000 AND 1250000

b.
FROM name, population 
WHERE population BETWEEN 1000000 AND 1250000
SELECT world

c.
SELECT name, population
FROM world
WHERE population BETWEEN 1000000 AND 1250000

d.
SELECT population BETWEEN 1000000 AND 1250000
FROM world

e.
WHERE population BETWEEN 1000000 AND 1250000
SELECT name, population FROM world
*/

-- c

/*
Exercício 4.2:
Escolha o resultado que você obteria com este código:
SELECT name, population
FROM world
WHERE name LIKE "Al%"


a.
Table-A
Albania
Algeria

b.
Table-B
%bania	3200000
%geria	32900000

c.
Table-C
Al	0

d.
Table-D
Albania	3200000

e.
Table-E
Albania	3200000
Algeria	32900000
*/

-- e

/*
Exercício 4.3:
Selecione o código que mostra os países que terminam em A ou L

a.
SELECT name FROM world
 WHERE name LIKE 'a%' AND name LIKE 'l%'

b. 
SELECT name FROM world
 WHERE name LIKE 'a%' OR name LIKE 'l%'

c. 
SELECT name FROM world
 WHERE name LIKE '%a' AND name LIKE '%l'

d. 
SELECT name FROM world
WHERE name LIKE '%a' OR 'l%'

e.
SELECT name FROM world
WHERE name LIKE '%a' OR name LIKE '%l'
*/

-- e

/*
Exercício 4.4:
Escolha o resultado da consulta
SELECT name,length(name)
FROM world
WHERE length(name)=5 and region='Europe'

a.
name	length(name)
Benin	5
Lybia	5
Egypt	5

b.
name	length(name)
Italy	5
Egypt	5
Spain	5

c.
name	length(name)
Italy	5
Malta	5
Spain	5

d.
name	length(name)
Italy	5
France	6
Spain	5

e.
name	length(name)
Sweden	6
Norway	6
Poland	6
*/

-- c

/*
Exercício 4.5:
Aqui estão as primeiras linhas da tabela mundial:

name	      region	    area	  population	gdp
Afghanistan	South Asia	652225	26000000	
Albania	    Europe	    28728	  3200000	    6656000000
Algeria	    Middle East	2400000	32900000	  75012000000
Andorra	    Europe	    468	    64000	
...

Escolha o resultado que você obteria com este código:
SELECT name, area*2 FROM world WHERE population = 64000
a.
Andorra	234

b.
Andorra	468

c.
Andorra	936

d.
Andorra	4680

e.
Andorra	936

f.
Albania	57456
*/

-- c

/*
Exercício 4.6:
Selecione o código que mostraria os países com uma área maior que 50.000 e uma população menor que 10.000.000

a.
SELECT name, area, population
  FROM world
 WHERE area < 50000 AND population < 10000000

b.
SELECT name, area, population
  FROM world
 WHERE area < 50000 AND population > 10000000

c.
SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000

d.
SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population > 10000000

e. 
SELECT name, area, population
  FROM world
 WHERE area = 50000 AND population = 10000000
*/

-- c
                  
/*
Exercício 4.7:
Selecione o código que mostra a densidade populacional da China, Austrália, Nigéria e França

a.
SELECT name, area/population
FROM world WHERE name IN ('China', 'Nigeria', 'France', 'Australia')

b.
SELECT name, area/population
FROM world WHERE name LIKE ('China', 'Nigeria', 'France', 'Australia')

c.
SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')

d.
SELECT name, population/area
  FROM world
 WHERE name LIKE ('China', 'Nigeria', 'France', 'Australia')

e.
SELECT name, population
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')
*/

-- c
/*
Exercício 6 : 
Exercício 6.1:
 Escolha o código que mostra o nome dos nomes dos vencedores começando com C e terminando com n

a. 
SELECT name FROM nobel
 WHERE winner LIKE '%C%' AND winner LIKE '%n%'

b.
SELECT name FROM nobel
 WHERE winner LIKE '%C' AND winner LIKE 'n%'

c.
SELECT name FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'

d.
SELECT winner FROM nobel
 WHERE winner LIKE '%C' AND winner LIKE 'n%'

e.
SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'
*/

-- e

/*
Exercício 6.2:
Selecione o código que mostra quantos prêmios de química foram dados entre 1950 e 1960

a.
SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND BETWEEN 1950 and 1960

b.
SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN (1950, 1960)

c.
SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960

d.
SELECT subject FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960

e.
SELECT subject FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN (1950, 1960)
*/

-- c

/* 
Exercício 6.3:
Escolha o código que mostra a quantidade de anos em que nenhum prêmio de Medicina foi concedido

a.
SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr IN (SELECT DISTINCT yr FROM nobel WHERE subject <> 'Medicine')

b.
SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')

c.
SELECT DISTINCT yr FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject LIKE 'Medicine')

d.
SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject NOT LIKE 'Medicine')

e.
SELECT COUNT(yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')

*/

-- b

/*
Exercício 6.4:
Selecione o resultado que seria obtido a partir do seguinte código:
SELECT subject, winner FROM nobel WHERE winner LIKE 'Sir%' AND yr LIKE '196%'

a.
Medicine	John Eccles
Medicine	Frank Macfarlane Burnet

b.
Chemistry	Sir Cyril Hinshelwood

c.
Medicine	Sir John Eccles
Medicine	Sir Frank Macfarlane Burnet

d.
Medicine	John Eccles
Medicine	Frank Macfarlane Burnet
Chemistry	Willard F.Libby

e.
Sir John Eccles
Sir Frank Macfarlane Burnet
*/

-- c

/*
Exercício 6.5:
Selecione o código que mostraria o ano em que nenhum prêmio de Física ou Química foi concedido

a.
SELECT yr FROM nobel
 WHERE subject NOT IN(SELECT yr 
                        FROM nobel
                       WHERE subject IN ('Chemistry','Physics'))

b.
SELECT yr FROM nobel
 WHERE subject NOT IN(SELECT subject 
                        FROM nobel
                       WHERE subject IN ('Chemistry','Physics'))

c.
SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT yr 
                   FROM nobel
                 WHERE subject IN ('Chemistry','Physics'))

d.
SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT subject
                 FROM nobel
                WHERE subject IN ('Chemistry','Physics'))

e.
SELECT yr FROM subject
 WHERE yr NOT IN (SELECT yr
                    FROM nobel
                   WHERE subject IN ('Chemistry','Physics'))
*/

-- c

/*
Exercício 6.6:
Selecione o código que mostra os anos em que um prêmio de Medicina foi concedido, mas nenhum prêmio de Paz ou Literatura foi

a.
SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' AND
       subject NOT IN(SELECT yr from nobel
                      WHERE subject='Literature')
  AND  yr NOT IN (SELECT yr
                    FROM nobel
                   WHERE subject='Peace')

b.
SELECT DISTINCT yr
  FROM nobel WHERE subject='Medicine'
   AND yr NOT IN(SELECT yr from nobel
                  WHERE subject='Literature'
                    AND subject='Peace')

c.
SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' 
   AND yr NOT IN(SELECT yr FROM nobel 
                  WHERE subject='Literature')
   AND yr NOT IN (SELECT yr FROM nobel
                   WHERE subject='Peace')

d.
SELECT DISTINCT yr
  FROM subject
 WHERE subject='Medicine'
   AND yr NOT IN(SELECT yr from nobel
                  WHERE subject='Literature'
                    AND subject='Peace')

e. 
SELECT DISTINCT yr
  FROM subject
 WHERE subject='Medicine' AND
  yr NOT IN('Literature','Peace')
*/

-- c
                  
/*
Exercício 6.7:
Escolha o resultado que seria obtido a partir do seguinte código:
 SELECT subject, COUNT(subject) 
   FROM nobel 
  WHERE yr ='1960' 
  GROUP BY subject

a.
1
1
2
1
1

b.
Chemistry	6

c.
Chemistry	3
Literature	1
Medicine	2
Peace	0
Physics	2

d.
Chemistry	1
Literature	1
Medicine	2
Peace	1
Physics	1

e.
Chemistry	1
Literature	1
Peace	1
Physics	1
*/

-- d
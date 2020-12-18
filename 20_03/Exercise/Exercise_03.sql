/*
Exercício 3 : 
Exercício 3.1:
Altere a consulta mostrada para que ela exiba os prêmios Nobel de 1950.
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1960
*/

SELECT yr, subject, winner FROM nobel
 WHERE yr = 1950

/*
Exercício 3.2:
Mostra quem ganhou o prêmio de Literatura de 1962.
SELECT winner
  FROM nobel
 WHERE yr = 1960
   AND subject = 'Physics'
*/

SELECT winner FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

/*
Exercício 3.3:
Mostre o ano e a matéria que ganhou o prêmio de 'Albert Einstein'.
*/

SELECT yr, subject FROM nobel
 WHERE winner = 'Albert Einstein' 

/*
Exercício 3.4:
Dê o nome dos vencedores da 'Paz' desde o ano 2000, incluindo 2000.
*/

SELECT winner FROM nobel
 WHERE subject = 'Peace' 
 AND yr BETWEEN 2000 AND 2020 

/*
Exercício 3.5:
Mostre todos os detalhes ( ano , assunto , vencedor ) dos vencedores do prêmio de Literatura de 1980 a 1989 inclusive.
*/

SELECT * FROM nobel
 WHERE subject = 'Literature' 
 AND yr BETWEEN 1980 AND 1989 

/*
Exercício 3.6:
Mostrar todos os detalhes dos vencedores presidenciais:

Theodore Roosevelt
Woodrow Wilson
Jimmy Carter
Barack Obama
SELECT * FROM nobel
 WHERE yr = 1970
  AND subject IN ('Cookery',
                  'Chemistry',
                  'Literature')
*/

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama')
                  
/*
Exercício 3.7:
Mostre os vencedores com o primeiro nome John
*/

SELECT winner FROM nobel
 WHERE winner LIKE 'John%'

/*
Exercício 3.8:
Mostre o ano, o assunto e o nome dos vencedores de Física em 1980, juntamente com os vencedores de Química em 1984.
*/

SELECT yr, subject, winner FROM nobel
 WHERE (yr=1980 and subject='physics') or (yr=1984 and subject='chemistry');
 

/*
Exercício 3.9:
Mostre o ano, o assunto e o nome dos vencedores de 1980, exceto Química e Medicina
*/

SELECT * FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine')

/*
Exercício 3.10:
Mostre o ano, o assunto e o nome das pessoas que ganharam um prêmio de 'Medicina' no início do ano (antes de 1910, não incluindo 1910) junto com os vencedores de um prêmio de 'Literatura' em um ano posterior (após 2004, incluindo 2004)
*/

SELECT * FROM nobel
WHERE (subject  = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr >= 2004)

/*
Exercício 3.11:
Encontre todos os detalhes do prêmio ganho por PETER GRÜNBERG
*/

SELECT * FROM nobel
WHERE winner LIKE 'peter gr%nberg'

/*
Exercício 3.12:
Encontre todos os detalhes do prêmio ganho por EUGENE O'NEILL
*/

SELECT * FROM nobel
WHERE winner = 'Eugene O''Neill'

/*
Exercício 3.13:
Cavaleiros em ordem

Liste os vencedores, ano e assunto em que o vencedor começa com o Senhor . Mostre o mais recente primeiro e, em seguida, por ordem de nome.
*/

SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'sir%'
ORDER BY yr DESC, winner

/*
Exercício 3.14:
A expressão assunto IN ('Química', 'Física') pode ser usada como um valor - será 0 ou 1 .
Mostre os vencedores de 1984 e os assuntos ordenados por assunto e nome do vencedor; mas liste a Química e a Física por último.

SELECT winner, subject, subject IN ('Physics','Chemistry')
  FROM nobel
 WHERE yr=1984
 ORDER BY subject,winner
*/

SELECT winner, subject FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'), subject, winner
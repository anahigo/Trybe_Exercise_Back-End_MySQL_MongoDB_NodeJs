/*
Exercício 7 : 
Exercício 7.1:
Consulte todas as colunas para todas as cidades americanas na tabela CITY com populações maiores que 100000. O CountryCode para a América é USA.

*/

SELECT *
FROM CITY
WHERE
    COUNTRYCODE = 'USA'
    AND POPULATION > 100000;

/*
Exercício 7.2:
Consulte o campo NAME para todas as cidades americanas na tabela CITY com populações maiores que 120000. O CountryCode para a América é USA.

*/

SELECT NAME
FROM CITY
WHERE
    COUNTRYCODE = 'USA'
    AND POPULATION > 120000;

/*
Exercício 7.3:
Consulte todas as colunas (atributos) para cada linha na tabela CITY .
*/

SELECT *
FROM CITY;

/*
Exercício 7.4:
Consulte todas as colunas de uma cidade em CITY com o ID 1661 .
*/

SELECT *
FROM CITY
WHERE
    ID = 1661;

/*
Exercício 7.5:
Consulte todos os atributos de todas as cidades japonesas na tabela CITY . O COUNTRYCODE para o Japão é JPN.
*/

SELECT *
FROM CITY
WHERE
    COUNTRYCODE = 'JPN';


/*
Exercício 7.6:
Consulte os nomes de todas as cidades japonesas na tabela CITY . O COUNTRYCODE para o Japão é JPN.
*/

SELECT NAME
FROM CITY
WHERE
    COUNTRYCODE = 'JPN';
                  
/*
Exercício 7.7:
Consulte uma lista de CITY e STATE na tabela STATION .
*/

SELECT CITY, STATE FROM STATION;

/*
Exercício 7.8:
Consulte uma lista de nomes de CITY em STATION para cidades que têm um número de ID par . Imprima os resultados em qualquer ordem, mas exclua duplicatas da resposta.
*/

SELECT DISTINCT CITY FROM STATION 
WHERE MOD(ID, 2) = 0;
 

/*
Exercício 7.9:
Consulte as duas cidades em STATION com os nomes de CITY mais curtos e mais longos , bem como seus respectivos comprimentos (ou seja: número de caracteres no nome). Se houver mais de uma cidade menor ou maior, escolha aquela que vier primeiro na ordem alfabética.
*/

(
    SELECT CITY, LENGTH(CITY) AS `length`
    FROM STATION
    WHERE 1
    ORDER BY `length` ASC, CITY ASC
    LIMIT 1
) UNION (
    SELECT CITY, LENGTH(CITY) AS `length`
    FROM STATION
    WHERE 1
    ORDER BY `length` DESC, CITY ASC
    LIMIT 1
)

/*
Exercício 7.10:
Consulta a lista de CIDADE nomes que começam com vogais (ie, a, e, i, o, ou u) do STATION . Seu resultado não pode conter duplicatas.
*/


SELECT DISTINCT CITY FROM STATION  
WHERE CITY REGEXP '^[aeiou].*';


/*
Exercício 7.11:
Consulte a lista de nomes de CITY que terminam com vogais (a, e, i, o, u) em STATION . Seu resultado não pode conter duplicatas.
*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[aeiou]$';

/*
Exercício 7.12:
Consulte a lista de nomes de CITY em STATION que possuem vogais (ou seja, a , e , i , o e u ) como seu primeiro e último caracteres. Seu resultado não pode conter duplicatas.
*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';

/*
Exercício 7.13:
Consulte a lista de nomes de CITY em STATION que não começam com vogais. Seu resultado não pode conter duplicatas.
*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou]';


/*
Exercício 7.14:
Consulte a lista de nomes de CITY de STATION que não terminam com vogais. Seu resultado não pode conter duplicatas.
*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[^aeiou]$'

/*
Exercício 7.15:
Consulte a lista de nomes de CITY de STATION que não começam com vogais ou não terminam com vogais. Seu resultado não pode conter duplicatas.
*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou]|[^aeiou]$';

/*
Exercício 7.16:
Consulte a lista de nomes de CITY de STATION que não começam com vogais e não terminam com vogais. Seu resultado não pode conter duplicatas.
*/

SELECT DISTINCT CITY FROM STATION 
WHERE CITY REGEXP '^[^aeiou].*[^aeiou]$';

/*
Exercício 7.17:
Consulte o nome de qualquer aluno em ALUNOS com pontuação superior a Marcas 75 . Ordene sua saída pelos últimos três caracteres de cada nome. Se dois ou mais alunos tiverem nomes terminando nos mesmos três últimos caracteres (ou seja: Bobby, Robby, etc.), classifique-os em segundo lugar por ID crescente .
*/

SELECT NAME FROM STUDENTS 
WHERE MARKS > 75 
ORDER BY RIGHT(NAME, 3), ID ASC;

/*
Exercício 7.18:
Escreva uma consulta que imprima uma lista de nomes de funcionários (ou seja: o atributo de nome ) da tabela Employee em ordem alfabética.
*/

SELECT NAME FROM EMPLOYEE
ORDER BY NAME;

/*
Exercício 7.19:
Escreva uma consulta que imprima uma lista de nomes de funcionários (ou seja: o atributo de nome ) para funcionários em Employee com um salário maior que por mês, que trabalham há menos de meses. Classificar o seu resultado por ascendente employee_id .
*/

SELECT NAME FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10
ORDER BY EMPLOYEE_ID;
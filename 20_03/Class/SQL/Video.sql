SELECT * FROM sakila.actor;
/*
SELECT * FROM tabela
WHERE condicao
*/

SELECT * FROM sakila.actor
WHERE last_name = 'DAVIS';

SELECT * FROM sakila.actor
WHERE last_name = 101;

/*
OPERADOR - DESCRIÇÃO
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
*/

SELECT * FROM sakila.film
WHERE length > 50
ORDER BY length;

SELECT * FROM sakila.film
WHERE length < 50
ORDER BY length;

SELECT * FROM sakila.film
WHERE title <> 'Allen Center';

SELECT * FROM sakila.film
WHERE title <> 'Allen Center' and replacement_cost > 20;

SELECT * FROM sakila.film
WHERE rating = 'G' or rating = 'PG-13' or  rating = 'PG';

-- IS (TRUE=1, FALSE=0, NULL)

SELECT * FROM sakila.rental
WHERE return_date IS NULL;

SELECT * FROM sakila.staff
WHERE active IS TRUE;

SELECT * FROM sakila.staff
WHERE active IS FALSE;

SELECT * FROM sakila.staff
WHERE active IS NOT TRUE;

SELECT * FROM sakila.address
WHERE address2 IS NOT NULL;

SELECT * FROM sakila.film
WHERE title NOT LIKE 'academy%';

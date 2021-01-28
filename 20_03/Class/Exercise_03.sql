-- EXERCÍCIO 1
SELECT * FROM sakila.film;
SELECT * FROM sakila.film
WHERE title LIKE '%ace%';

-- EXERCÍCIO 2
SELECT * FROM sakila.film;
SELECT * FROM sakila.film
WHERE description LIKE '%china';

-- EXERCÍCIO 3
SELECT * FROM sakila.film;
SELECT * FROM sakila.film
WHERE description LIKE '%girl%' AND title LIKE '%lord';

-- EXERCÍCIO 4
SELECT * FROM sakila.film;
SELECT * FROM sakila.film
WHERE title LIKE '___gon%';

-- EXERCÍCIO 5 
SELECT * FROM sakila.film;
SELECT * FROM sakila.film
WHERE title LIKE '___gon%' AND description LIKE '%documentary%';

-- EXERCÍCIO 6 
SELECT * FROM sakila.film;
SELECT * FROM sakila.film
WHERE title LIKE '%academy' OR title LIKE 'mosquito%';

-- EXERCÍCIO 7 
SELECT * FROM sakila.film;
SELECT * FROM sakila.film
WHERE description LIKE '%monkey%' AND description LIKE '%sumo%';  


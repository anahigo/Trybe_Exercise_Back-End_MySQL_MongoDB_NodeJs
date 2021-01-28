-- Exercise 1
SELECT * FROM sakila.actor;
SELECT actor_id
FROM sakila.actor
WHERE first_name = 'KARL';
DELETE FROM sakila.film_actor
WHERE actor_id = 12;
SELECT * FROM sakila.film_actor;
DELETE FROM sakila.actor
WHERE first_name = 'KARL';
SELECT * FROM sakila.actor;

-- Exercise 2
SELECT * FROM sakila.actor;
SELECT actor_id
FROM sakila.actor
WHERE first_name = 'MATTHEW';
DELETE FROM sakila.film_actor
WHERE actor_id IN (8, 103, 181);
SELECT * FROM sakila.film_actor;
DELETE FROM sakila.actor
WHERE first_name = 'MATTHEW';
SELECT * FROM sakila.actor;

-- Exercise 3
SELECT * FROM sakila.film_text;
DELETE FROM sakila.film_text
WHERE DESCRIPTION LIKE '%saga%';
SELECT * FROM sakila.film_text;

-- Exercise 4
TRUNCATE sakila.film_actor;
TRUNCATE sakila.film_category;

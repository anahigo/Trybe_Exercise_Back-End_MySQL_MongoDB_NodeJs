SELECT * FROM sakila.film;

SELECT title, release_year, rating FROM sakila.film;

SELECT * FROM sakila.actor;
SELECT DISTINCT last_name FROM sakila.actor;

SELECT COUNT(*) FROM sakila.film;
SELECT COUNT(*) FROM sakila.customer;
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;
SELECT COUNT(*) FROM sakila.category;
SELECT COUNT(*) FROM sakila.country;

SELECT * FROM sakila.language;
SELECT * FROM sakila.actor LIMIT 5 OFFSET 1;

SELECT * FROM sakila.film;
SELECT title, release_year, length, rating FROM sakila.film
ORDER BY length, replacement_cost
LIMIT 20;
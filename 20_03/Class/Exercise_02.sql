-- EXERCÍCIO 1 
SELECT * FROM sakila.customer;
SELECT * FROM sakila.customer
WHERE email = 'LEONARD.SCHOFIELD@sakilacustomer.org';

-- EXERCÍCIO 2
SELECT * FROM sakila.customer;
SELECT * FROM sakila.customer
WHERE active IS FALSE AND store_id = 2 AND first_name NOT LIKE 'kENNETH%'
ORDER BY first_name, last_name;

-- EXERCÍCIO 3
SELECT * FROM sakila.film;
SELECT title, description, release_year FROM sakila.film
WHERE rating <> 'R' AND replacement_cost >= 18.00
ORDER BY replacement_cost DESC LIMIT 100;

-- EXERCÍCIO 4
SELECT * FROM sakila.customer;
SELECT COUNT(active) FROM sakila.customer
WHERE active IS TRUE AND store_id = 1;

-- EXERCÍCIO 5
SELECT * FROM sakila.customer;
SELECT * FROM sakila.customer
WHERE active IS FALSE AND store_id = 1;

-- EXERCÍCIO 6
SELECT * FROM sakila.film;
SELECT * FROM sakila.film
WHERE rating = 'NC-17' OR rating = 'R'
ORDER BY rental_rate ASC LIMIT 50;

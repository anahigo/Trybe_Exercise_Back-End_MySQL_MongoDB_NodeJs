-- EXERCÍCIO 1
SELECT * FROM sakila.rental;
SELECT COUNT(rental_id) FROM sakila.rental
WHERE return_date LIKE '2005-08-29%'; 

-- EXERCÍCIO 2
SELECT * FROM sakila.rental;
SELECT COUNT(rental_id) FROM sakila.rental
WHERE rental_date BETWEEN '2005-07-01' AND '2005-08-22'; 

-- EXERCÍCIO 3
SELECT * FROM sakila.rental;
SELECT rental_date, return_date, last_update FROM sakila.rental
WHERE rental_id = 10330;

-- EXERCÍCIO 4
SELECT * FROM sakila.rental;
SELECT CONCAT(rental_id, ',', ' ', rental_date) FROM sakila.rental
WHERE rental_date LIKE '2005-08-18 00:14:03'; 


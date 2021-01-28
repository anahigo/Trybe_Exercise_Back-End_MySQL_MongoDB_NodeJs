-- EXERCÍCIO 1A
SELECT * FROM sakila.customer;
SELECT * FROM sakila.customer
WHERE customer_id IN (269, 239, 126, 399, 142);

-- EXERCÍCIO 2A
SELECT * FROM sakila.address;
SELECT * FROM sakila.address
WHERE district IN ('QLD', 'Nagasaki', 'California', 'Attika', 'Mandalay', 'Nantou', 'Texas');

-- EXERCÍCIO 1B
SELECT * FROM sakila.customer;
SELECT first_name, last_name, email FROM sakila.customer
WHERE last_name IN ('hicks', 'crawford', 'henry', 'boyd', 'mason', 'morales', 'kennedy')
ORDER BY first_name;

-- EXERCÍCIO 2B
SELECT * FROM sakila.customer;
SELECT email FROM sakila.customer
WHERE address_id IN (172, 173, 174, 175, 176)
ORDER BY email;

-- EXERCÍCIO 3B
SELECT * FROM sakila.payment;
SELECT COUNT(payment_id) FROM sakila.payment
WHERE payment_date BETWEEN '2005-05-01' AND '2005-08-01';

-- EXERCÍCIO 4B
SELECT * FROM sakila.film;
SELECT title, release_year, rental_duration FROM sakila.film
WHERE rental_duration BETWEEN '3' AND '6'
ORDER BY rental_duration DESC;

-- EXERCÍCIO 5B - verificar
SELECT * FROM sakila.film;
SELECT title, rating FROM sakila.film
WHERE rating = 'G' AND rating = 'PG' AND rating = 'PG-13' AND rating = 'NC-17'
LIMIT 500;
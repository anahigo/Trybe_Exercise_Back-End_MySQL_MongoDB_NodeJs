SET SQL_SAFE_UPDATES = 0;

-- Exercise 1
SELECT * FROM sakila.actor;
UPDATE sakila.actor
SET first_name = 'JULES'
WHERE first_name = 'JULIA';
SELECT * FROM sakila.actor;

-- Exercise 2
SELECT * FROM sakila.category;
UPDATE sakila.category
SET name = 'Science Fiction'
WHERE name = 'Sci-Fi';
SELECT * FROM sakila.category;

-- Exercise 3
SELECT * FROM sakila.film;
UPDATE sakila.film
SET rental_rate = 25
WHERE length > 100
AND (rating = 'G' OR rating = 'PG' OR rating = 'PG-13')
AND replacement_cost > 20;
SELECT * FROM sakila.film;

-- Exercise 4
SELECT * FROM sakila.film;
UPDATE sakila.film
SET rental_rate = (
    CASE
        WHEN length BETWEEN 1 AND 100 THEN 10
        WHEN length > 100 THEN 20
    END
);
SELECT * FROM sakila.film;
-- Exercise_01
SELECT a.film_id, a.replacement_const, b_id, b_replacement_const
FROM sakila.film AS a, sakila.film AS b
WHERE  a.replacement_const = b_replacement_const;

-- Exercise_02
SELECT A.title, A.rental_duration, B.title, B.rental_duration
FROM sakila.film AS A, sakila.film AS B
WHERE A.rental_duration = B.rental_duration
HAVING A.rental_duration BETWEEN 2 AND 4;
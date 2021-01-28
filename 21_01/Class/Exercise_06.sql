-- Exercise 1A
SELECT active, COUNT(*)
FROM sakila.customer
GROUP BY active;

-- Exercise 2A
SELECT store_id, active, COUNT(*)
FROM sakila.customer
GROUP BY store_id, active;

-- Exercise 3A
SELECT AVG(rental_duration) AS avg_rental_duration, rating
FROM sakila.film
GROUP BY rating
ORDER BY avg_rental_duration DESC;

-- Exercise 4A
SELECT district, COUNT(*)
FROM sakila.address
GROUP BY district
ORDER BY COUNT(*) DESC;

-- ExeSELECT rating, AVG(length) duracao_media
FROM sakila.film
GROUP BY rating
HAVING duracao_media BETWEEN 115.0 AND 121.50
ORDER BY duracao_media DESC;

-- Exercise 2B
SELECT rating, SUM(replacement_cost) as custo_de_substituicao
FROM sakila.film
GROUP BY rating
HAVING custo_de_substituicao  > 3950.50
ORDER BY custo_de_substituicao;
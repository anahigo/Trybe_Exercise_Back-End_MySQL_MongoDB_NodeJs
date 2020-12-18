SELECT ci.city, ci.country_id, co.country
FROM sakila.city AS ci
INNER JOIN sakila.country AS co
ON ci.country_id = co.country_id;

SELECT f.title, f.language_id, l.name
FROM sakila.film AS f
INNER JOIN sakila.language AS l
ON f.language_id = l.language_id;


SELECT a.address, a.city_id, c.city
FROM sakila.address AS a
INNER JOIN sakila.city AS c
ON c.city_id = a.city_id;
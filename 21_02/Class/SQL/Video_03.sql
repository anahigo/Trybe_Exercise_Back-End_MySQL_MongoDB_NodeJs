SELECT * FROM sakila.film;
SELECT A.title, A.replacement_const, B_title, B_replacement_const
FROM sakila.film AS A, sakila.film AS B
WHERE  A.length = B.length;

SELECT * FROM sakila.address;
SELECT A.address, A.district, B_address, b_district
FROM sakila.address AS A, sakila.address AS B
WHERE  A.district <> B.district;

SELECT first_name, last_name FROM sakila.actor
UNION
SELECT first_name, last_name FROM sakila.customer;

(SELECT first_name, last_name, 0 AS 'customer identification' FROM sakila.actor)
UNION ALL
(SELECT first_name, last_name, customer_id FROM sakila.customer)
ORDER BY first_name;

(SELECT first_name, last_name, 'não cadastrado' AS email FROM sakila.actor ORDER BY first_name LIMIT 10)
UNION ALL
(SELECT first_name, last_name, emailFROM sakila.customer ORDER BY first_name LIMIT 10)
ORDER BY first_name LIMIT 10;

(SELECT first_name, last_name, 'não cadastrado' AS email FROM sakila.actor ORDER BY first_name LIMIT 20)
UNION ALL
(SELECT first_name, last_name, emailFROM sakila.customer ORDER BY first_name LIMIT 20)
ORDER BY first_name LIMIT 10 OFFSET 10;

(SELECT first_name, last_name, 'não cadastrado' AS email FROM sakila.actor ORDER BY first_name LIMIT 50)
UNION ALL
(SELECT first_name, last_name, emailFROM sakila.customer ORDER BY first_name LIMIT 50)
ORDER BY first_name LIMIT 10 OFFSET 40;

SELECT 1, 22, 44 UNION SELECT 2,33,55;

SELECT 1, 22, 44 UNION SELECT 2,33,55 UNION SELECT 2,33,55;

SELECT 1, 22, 44 UNION SELECT 2,33,55 UNION ALL SELECT 2,33,55;
-- Exercise_01
SELECT first_name, last_name FROM sakila.actor
UNION ALL
SELECT first_name, last_name FROM sakila.staff;

-- Exercise_02
SELECT first_name FROM customer WHERE first_name LIKE '%tracy%'
UNION
SELECT first_name FROM actor WHERE first_name LIKE '%je%';

-- Exercise_03
(SELECT first_name from sakila.actor ORDER BY actor_id DESC LIMIT 5)
UNION
(SELECT first_name from sakila.staff LIMIT 1)
UNION
(SELECT first_name FROM sakila.customer LIMIT 5 OFFSET 15)
ORDER BY first_name;

-- Exercise_04
(SELECT first_name, last_name
 FROM   sakila.customer
 ORDER  BY first_name, last_name
 LIMIT  60)
UNION
(SELECT first_name, last_name
 FROM   sakila.actor
 ORDER  BY first_name, last_name
 LIMIT  60)
ORDER  BY first_name, last_name
LIMIT 15
OFFSET 45;

-- W3SCHOOL 
-- Exercise_01 - Insira as partes que faltam na cláusula JOIN para unir as duas tabelas Orders e Customers, usando o campo CustomerID  em ambas as tabelas como a relação entre as duas tabelas

/*
SELECT *
FROM Orders
LEFT JOIN Customers
________________=_____________;
*/

SELECT *
FROM Orders
LEFT JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

-- Exercise_02 - Escolha a cláusula JOIN correta para selecionar todos os registros das duas tabelas onde há uma correspondência em ambas as tabelas.

/*
SELECT *
FROM Orders
________________________
ON Orders.CustomerID=Customers.CustomerID;
*/

SELECT *
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

-- Exercise_03 - Escolha a cláusula JOIN correta para selecionar todos os registros da tabela Customers mais todas as correspondências na tabela Orders.

/*
SELECT *
FROM Orders
________________________
ON Orders.CustomerID=Customers.CustomerID;
*/

SELECT *
FROM Orders
RIGHT JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;

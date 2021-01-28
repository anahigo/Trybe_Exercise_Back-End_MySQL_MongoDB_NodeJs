-- Exercise_01
SELECT actor.actor_id, actor.first_name, film.film_id
FROM sakila.actor AS actor
INNER JOIN sakila.film_actor AS film 
ON actor.first_name = film.actor_id;

-- Exercise_02
SELECT staff.first_name, staff.last_name, address.address
FROM sakila.staff AS staff
INNER JOIN sakila.address AS address 
ON staff.address_id = address.address_id;

-- Exercise_03
SELECT customer.customer_id, customer.first_name, customer.email, customer.address_id, address.address
FROM sakila.customer AS customer
INNER JOIN sakila.address AS address  
ON customer.address_id = address.address_id
ORDER BY customer.first_name DESC
LIMIT 100;

-- Exercise_04
SELECT customer.first_name, customer.email, customer.address_id, address.address, address.district
FROM sakila.customer AS customer
INNER JOIN sakila.address AS address 
ON customer.address_id = address.address_id
WHERE
    address.district = 'California'
    AND customer.first_name LIKE '%rene%';

-- Exercise_05
SELECT customer.first_name, count(address.address)
FROM sakila.customer AS customer
INNER JOIN sakila.address AS address  
ON address.address_id = customer.address_id
WHERE customer.active = 1
GROUP BY customer.first_name
ORDER BY first_name DESC

-- Exercise_06
SELECT staff.first_name, staff.last_name, AVG(payment .amount)
FROM sakila.staff AS staff
INNER JOIN sakila.payment AS payment  
ON staff.staff_id = payment .staff_id
WHERE YEAR(payment.payment_date) = 2006
GROUP BY staff.first_name, staff.last_name;

-- Exercise_07
SELECT actor.actor_id, actor.first_name, film.film_id, film.title
FROM sakila.actor AS actor
INNER JOIN sakila.film_actor AS film_actor 
ON actor.actor_id = film_actor.actor_id
INNER JOIN sakila.film AS film 
ON film.film_id = film_actor.film_id;
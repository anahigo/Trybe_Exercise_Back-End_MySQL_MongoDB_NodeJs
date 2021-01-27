SELECT * FROM hotel.customers;
SELECT * FROM hotel.reservations; 

SELECT * FROM hotel.customers AS C
WHERE EXISTS(
  SELECT * FROM hotel.reservations WHERE C.CustomerId = reservations.CustomerId
);

SELECT * FROM hotel.customers AS C
WHERE NOT EXISTS(
  SELECT * FROM hotel.reservations WHERE C.CustomerId = reservations.CustomerId
);


SELECT * FROM praticando.manufacturers;
SELECT * FROM praticando.products; 

SELECT name FROM praticando.manufacturers AS m
WHERE NOT EXISTS(
  SELECT * FROM praticando.products WHERE manufacturers = m.code
);

SELECT name FROM praticando.manufacturers AS m
WHERE EXISTS(
  SELECT * FROM praticando.products WHERE manufacturers = m.code
);

SELECT customer_id FROM sakila.customer AS c
WHERE EXISTS(
  SELECT * FROM sakila.payment WHERE c.customer_id = customer_id
);

SELECT customer_id FROM sakila.customer AS c
WHERE NOT EXISTS(
  SELECT * FROM sakila.payment WHERE c.customer_id = customer_id
);

INSERT INTO sakila.customer(
  store_id, first_name, last_name, email, address_id, active
)
VALUES(
  1, 'Geraldo', 'Hoff', 'geralhoff@hotmail.com', 40, 1
);

SELECT customer_id FROM sakila.customer AS c
WHERE NOT EXISTS(
  SELECT * FROM sakila.payment WHERE c.customer_id = customer_id
);
-- Exercise 1
SELECT * FROM sakila.staff;
INSERT INTO sakila.staff
    (first_name, last_name, address_id, email, store_id, active, username, password)
VALUES
    ('Ana', 'Banana', 2, 'anabanana@gmail.com', 1, 1, 'ana', 'banana');
SELECT * FROM sakila.staff;
    
-- Exercise 2
SELECT * FROM sakila.staff;
INSERT INTO sakila.staff
    (first_name, last_name, address_id, email, store_id, active, username, password)
VALUES
    ('Edson', 'Higo', 2, 'edsonhigo@gmail.com', 1, 1, 'edson', 'higo'),
	('Bel', 'Franchon', 5, 'belfranchon@gmail.com', 1, 1, 'bel', 'papel');
SELECT * FROM sakila.staff;

-- Exercise 3
SELECT * FROM sakila.actor;
SELECT * FROM sakila.customer;
SELECT * FROM sakila.customer;
INSERT INTO sakila.actor(first_name, last_name)
	SELECT first_name, last_name FROM sakila.customer
    ORDER BY customer_id LIMIT 5;
SELECT * FROM sakila.actor
ORDER BY actor_id DESC;

-- Exercise 4
SELECT * FROM sakila.category;
INSERT INTO sakila.category (name)
VALUES
    ('Thriller'),
    ('Romantic'),
    ('Romantic Comedy');
SELECT * FROM sakila.category;

-- Exercise 5
SELECT * FROM sakila.store;
INSERT INTO sakila.store
	(manager_staff_id, address_id)
VALUES 
	(3, 3);
SELECT * FROM sakila.store;
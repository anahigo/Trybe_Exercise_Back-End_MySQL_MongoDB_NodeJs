-- Exercise_01
USE sakila;

DELIMITER $$

CREATE PROCEDURE ShowTop10Actors()
BEGIN
    SELECT actor_id, COUNT(*) AS 'quantidade de filmes'
    FROM film_actor
    GROUP BY actor_id
    ORDER BY COUNT(*) DESC
    LIMIT 10;
END $$

DELIMITER ;

-- Como usar:

CALL ShowTop10Actors();

-- Exercise_02
USE sakila;

DELIMITER $$

CREATE PROCEDURE FindMovieByCategory(IN category VARCHAR(100))
BEGIN
  SELECT F.film_id, F.title, FC.category_id, C.name
  FROM sakila.film AS F
  INNER JOIN sakila.film_category AS FC ON F.film_id = FC.film_id
  INNER JOIN sakila.category AS C ON C.category_id = FC.category_id
  WHERE C.name = category;
END $$

DELIMITER ;

-- Como usar:

CALL FindMovieByCategory('Action');

-- Exercise_03

USE sakila;

DELIMITER $$

CREATE PROCEDURE CheckIfActiveClient(
  IN client_email VARCHAR(200),
  OUT isActive BOOL
)
BEGIN
    SET isActive = (
        SELECT active
        FROM sakila.customer
        WHERE email = client_email
    );
END $$

DELIMITER ;

-- Como usar:

SELECT @ActiveStatus;
CALL CheckIfActiveClient('MARY.SMITH@sakilacustomer.org', @ActiveStatus);
SELECT @ActiveStatus;
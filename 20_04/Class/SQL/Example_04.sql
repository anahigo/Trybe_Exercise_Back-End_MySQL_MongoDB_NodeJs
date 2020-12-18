/*
DELETE FROM banco_de_dados.tabela
WHERE coluna = 'valor'
-- O WHERE é opcional. Porém, sem ele, todas as linhas da tabela seriam excluídas.
*/

SELECT * FROM sakila.film_text;
DELETE FROM sakila.film_text
WHERE title = 'ACADEMY DINOSAUR';
SELECT * FROM sakila.film_text;

SET SQL_SAFE_UPDATES = 0;

/*
-- Rejeita o comando DELETE.
ON DELETE NO ACTION

-- Rejeita o comando DELETE.
ON DELETE RESTRICT

-- Permite a exclusão dos registros da tabela pai, e seta para NULL os registros da tabela filho.
ON DELETE SET NULL

-- Exclui a informação da tabela pai e registros relacionados.
ON DELETE CASCADE
*/

SELECT * FROM sakila.actor;
DELETE FROM sakila.actor
WHERE first_name = 'GRACE';

DELETE FROM sakila.film_actor
WHERE actor_id = 7; -- actor_id = 7 é o Id de GRACE

DELETE FROM sakila.actor
WHERE first_name = 'GRACE';

/*
TRUNCATE banco_de_dados.tabela;
*/

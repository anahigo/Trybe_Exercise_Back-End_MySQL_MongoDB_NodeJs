/* Exercício 1:
Crie uma view chamada film_with_categories utilizando as tabelas category , film_category e film do banco de dados sakila . Essa view deve exibir o título do filme, o id da categoria e o nome da categoria, conforme a imagem abaixo. Os resultados devem ser ordenados pelo título do filme.
*/

USE sakila;
SELECT * FROM category;
SELECT * FROM film_category;
SELECT * FROM film;
CREATE VIEW film_with_categories AS
  SELECT F.title, FC.category_id, C.name
  FROM sakila.film_category AS FC
  INNER JOIN sakila.film AS F 
  ON F.film_id = FC.film_id
  INNER JOIN sakila.category AS C 
  ON C.category_id = FC.category_id
  ORDER BY F.title;

SELECT * FROM film_with_categories;
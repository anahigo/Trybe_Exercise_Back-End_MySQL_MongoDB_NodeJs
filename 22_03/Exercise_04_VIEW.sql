/* Exercício 4:
Crie uma view chamada movies_languages , usando as tabelas film e language do banco de dados sakila . Sua view deve exibir o título do filme , o id do idioma e o idioma do filme , como na imagem a seguir.
*/

USE sakila;
SELECT * FROM film;
SELECT * FROM language;
CREATE VIEW movies_languages AS
  SELECT F.title, F.language_id, L.name
  FROM sakila.language AS L
  INNER JOIN sakila.film AS F
  ON F.language_id = L.language_id
  ORDER BY F.title;

SELECT * FROM movies_languages;
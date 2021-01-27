/* Exercício 3:
Crie uma view chamada address_info que faça uso das tabelas address e city do banco de dados sakila . Sua view deve exibir o address_id , o address , o district , o city_id e a city . Os resultados devem ser ordenados pelo nome das cidades. Use a imagem abaixo como referência.
*/

USE sakila;
SELECT * FROM address;
SELECT * FROM city;
CREATE VIEW address_info AS
  SELECT A.address_id, A.address, A.district, C.city_id, C.city
  FROM sakila.address AS A
  INNER JOIN sakila.city AS C
  ON C.city_id = A.city_id
  ORDER BY C.city;

SELECT * FROM address_info;
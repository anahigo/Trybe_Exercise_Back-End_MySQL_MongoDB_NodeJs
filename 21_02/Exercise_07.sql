-- Exercise 7: Escreva uma consulta para encontrar os endereços (location_id, street_address, city, state_province, country_name) de todos os departamentos.

SELECT location_id, street_address, city, state_province, country_name
FROM locations
NATURAL JOIN countries;
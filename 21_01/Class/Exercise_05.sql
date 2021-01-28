SELECT
-- Exercise 1A
	AVG(length) AS 'Média de Duração',

-- Exercise 1B
	MIN(length) AS 'Duração Mínima',

-- Exercise 1C
	MAX(length) AS 'Duração Máxima',

-- Exercise 1D
	SUM(length) AS 'Tempo de Exibição Total',

-- Exercise 1E
	COUNT(*) AS 'Filmes Registrados'

FROM sakila.film;
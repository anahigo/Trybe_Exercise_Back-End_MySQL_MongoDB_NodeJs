-- Exercise 6:
-- Exercise 6.1: Selecione todos os dados de todos os cinemas
  -- e, adicionalmente, os dados do filme que está sendo exibido no cinema (se estiver sendo exibido).
SELECT *
FROM MovieTheaters AS MT 
LEFT JOIN Movies AS M
ON MT.Movie = M.Code;

-- Exercise 6.2: Selecione todos os dados de todos os filmes e, se o filme estiver sendo exibido em um cinema, mostre os dados do cinema.
SELECT *
FROM Movies AS M
LEFT JOIN MovieTheaters AS MT
ON M.Code = MT.Movie;

-- Exercise 6.3: Exibir os títulos de filmes que atualmente não estão sendo exibidos em nenhuma sala.
SELECT Title FROM Movies
WHERE Code NOT IN(
  SELECT Movie FROM MovieTheaters
  WHERE Movie IS NOT NULL
);
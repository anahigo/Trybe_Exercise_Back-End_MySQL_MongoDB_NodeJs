-- Exercício 1 :Encontre o filme com uma linha id de 6
SELECT Id, Title FROM movies 
WHERE Id = 6;

-- Exercício 2 : Encontre os filmes lançados nos anos year entre 2000 e 2010
SELECT Title, Year FROM movies
WHERE Year BETWEEN 2000 AND 2010;

-- Exercício 3 : Encontre os filmes não lançados nos anos year entre 2000 e 2010
SELECT Title, Year FROM movies
WHERE Year < 2000 OR Year > 2010;

-- Exercício 4 : Encontre os primeiros 5 filmes da Pixar e seu lançamento year
SELECT Title, Year FROM movies
WHERE Year <= 2003;

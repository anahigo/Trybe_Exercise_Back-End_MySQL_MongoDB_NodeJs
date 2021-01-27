-- Exercise 1:
-- Exercise 1.1: Encontre as vendas nacionais e internacionais de cada filme
SELECT M.title, B.domestic_sales, B.international_sales 
FROM movies AS M, boxoffice AS B
WHERE M.id = B.movie_id;

-- Exercise 1.2: Mostre os números de vendas de cada filme com melhor desempenho internacional, em vez de domesticamente
SELECT M.title, B.domestic_sales, B.international_sales 
FROM movies AS M, boxoffice AS B
WHERE M.id = B.movie_id 
AND B.international_sales  > B.domestic_sales;

-- Exercise 1.3: Liste todos os filmes por suas classificações em ordem decrescente
SELECT M.title, B.domestic_sales, B.international_sales 
FROM movies AS M, boxoffice AS B
WHERE M.id = B.movie_id 
ORDER BY B.rating DESC;
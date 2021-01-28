/* 
Exercise 2:
Exercise 2.1:
O diretor de A Bug's Life está incorreto, na verdade foi dirigido por John Lasseter
*/

UPDATE movies
SET director = "John Lasseter"
WHERE id="2";

/*
Exercise 2.2:
O ano em que Toy Story 2 foi lançado está incorreto; na verdade, ele foi lançado em 1999
*/

UPDATE movies
SET year = 1999
WHERE id = 3;

/*
Exercise 2.3:
Tanto o título quanto o diretor de Toy Story 8 estão incorretos! O título deveria ser "Toy Story 3" e foi dirigido por Lee Unkrich
*/

UPDATE movies
SET title = "Toy Story 3", director = "Lee Unkrich"
WHERE id = 11;
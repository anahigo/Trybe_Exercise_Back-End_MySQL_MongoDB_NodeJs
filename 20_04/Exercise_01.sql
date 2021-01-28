/* 
Exercise 1:
Exercise 1.1:
Adicione a nova produção do estúdio, Toy Story 4 à lista de filmes (você pode usar qualquer diretor)
*/

INSERT INTO movies 
  (Id, Title, Director, Year, Length_minutes) 
VALUES 
  (15, "Toy Story 4", "Josh Cooley", 2019, 100);

/*
Exercise 1.2:
Toy Story 4 foi lançado e aclamado pela crítica! Ele tinha uma classificação de 8,7 e fez 340 milhões no mercado interno e 270 milhões no exterior . Adicione o registro à BoxOffice tabela.
*/


INSERT INTO boxoffice 
  (Movie_id, Rating, Domestic_sales, International_sales)
VALUES 
  (4, 8.7, 340000000, 270000000);
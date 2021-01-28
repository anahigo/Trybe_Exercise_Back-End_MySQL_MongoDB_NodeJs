// # Exercício 06 : 
// Retorne todos os filmes com ratings maior do que 103 , exibindo apenas os campos title e ratings .

db.movies.find(
  { ratings: { $elemMatch: { $gte: 103 } } },
  { _id: 0, title: 1, ratings: 1 }
).pretty();

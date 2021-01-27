// # Exercício 12 : 
// Adicione aos atores de cast do character Batman do filme Batman os valores "Michael Keaton" , "Val Kilmer" e "George Clooney" , e deixe o array em ordem alfabética.

// Dica : Para isso, leia aqui sobre o operador $ .

db.movies.updateOne(
  { "title": "Batman", "cast.character": "Batman" },
  { $push: 
    { "cast.$.actor": 
      { 
        $each: ["Michael Keaton", "Val Kilmer", "George Clooney"], 
        $sort: 1 
      } 
    } 
  },
);

// # Exercício 11:
// Produza três querys para o filme Batman :
// Adicione o campo actor , que deve ser um array com o valor Christian Bale , ao array de cast em que o campo character seja igual a Batman;

// Adicione o campo actor , que deve ser um array com o valor Michael Caine , ao array de cast em que o campo character seja igual a Alfred;

// Adicione o campo actor , que deve ser um array com o valor Heath Ledger , ao array de cast em que o campo character seja igual a Coringa.

// Dica: Para isso, leia aqui sobre o operador $ .

db.movies.updateOne(
  { "title": "Batman", "cast.character": "Batman" },
  { $push: { "cast.$.actor": "Christian Bale" } },
  { upsert: true }
);

db.movies.updateOne(
  { "title": "Batman", "cast.character": "Alfred" },
  { $push: { "cast.$.actor": "Michael Caine" } },
  { upsert: true }
);

db.movies.updateOne(
  { "title": "Batman", "cast.character": "Coringa" },
  { $push: { "cast.$.actor": "Heath Ledger" } },
  { upsert: true }
);
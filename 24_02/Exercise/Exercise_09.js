// # Exercício 9:
// Adicione o campo character com o valor Marv ao array de cast em que o campo actor seja igual a Daniel Stern no filme Home Alone.

// Dica :Para isso, leia aqui sobre o operador $ .

db.movies.updateOne(
  { "title": "Home Alone", "cast.actor": "Daniel Stern" },
  { $push: { "cast.$.character": "Marv" } },
  { upsert: true }
);
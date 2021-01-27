// # Exercício 15:
// Selecione todos os super-heróis que pesem entre 80kg e 100kg , sejam Humanos ou Mutantes e não sejam publicados pela DC Comics .

db.superheroes.find(
  { $and: [
    { "aspects.weight": { $gte: 80, $lte: 100 }},
    { $or: [{ race: "Human" }, { race: "Mutant" }]},
    { publisher: { $ne: "DC Comics" }}
  ]}
).pretty();

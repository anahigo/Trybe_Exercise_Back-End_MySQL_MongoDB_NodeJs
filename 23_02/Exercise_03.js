// # Exercício 3:
// Retorne o total de super-heróis menores que 1.80m.

db.superheroes.count({ "aspects.height": { $lt: 180 }});

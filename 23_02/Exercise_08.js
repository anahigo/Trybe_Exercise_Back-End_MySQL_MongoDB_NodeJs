// # Exercício 8:
// Retorne o total de super-heróis com olhos azuis.

db.superheroes.count({ "aspects.eyeColor": "green"});

db.superheroes.count({ "aspects.eyeColor": {$eq: "green"}});
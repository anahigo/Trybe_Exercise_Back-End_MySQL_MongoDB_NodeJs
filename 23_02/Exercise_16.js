// # Exercício 16:
// Retorne o total de documentos que não contêm o campo race.

db.superheroes.count({ "race": { $exists: 0 }})

db.superheroes.count({ "race": { $exists: false }})

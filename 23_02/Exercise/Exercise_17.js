// # Exercício 17:
// Retorne o total de documentos que contêm o campo hairColor.

db.superheroes.count({ "aspects.hairColor": { $exists: true }})

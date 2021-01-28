// # Exercício 13:
// Selecione todos os super-heróis que não sejam humanos e não sejam maiores do que 1.80m .

db.superheroes.find(
    { $nor: [ 
        { race: "Human" },
        { "aspects.height": { $gt: 180 } }
    ]}
).pretty();

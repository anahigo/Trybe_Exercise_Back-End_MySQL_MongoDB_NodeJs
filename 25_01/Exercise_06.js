// # Exercício 06 : 
// Agrupe os clientes por sexo e uf . Retorne o total de clientes de cada sexo no campo total .

db.clientes.aggregate([
  { $group: { 
    _id: { uf: "$endereco.uf", sexo: "$sexo" },  
    total: { $sum: 1 } 
  } }
]).pretty();
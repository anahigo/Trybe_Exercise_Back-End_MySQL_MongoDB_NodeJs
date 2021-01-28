// # Exercício 10 : 
// Descubra quantos clientes compraram mais de 5 vezes. Retorne um documento que contenha somente o campo clientes com o total de clientes.

// Dica: O operador $count pode simplificar sua query .

db.vendas.aggregate([
  { $group: {
    _id: "$clienteId",
    totalCompras: { $sum: 1 }
  } },
  { $match: { totalCompras: { $gt: 5 } } },
  { $count: 'clientes' }
]).pretty();
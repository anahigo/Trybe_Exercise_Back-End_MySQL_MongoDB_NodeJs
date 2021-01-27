// # Exercício 08 : 
// Ainda nesse pipeline , descubra os 5 estados com mais compras.

db.clientes.aggregate([
  { $lookup: {
    from: 'vendas',
    localField: 'clienteId',
    foreignField: 'clienteId',
    as: 'compras'
  } },
  { $match: {
    "compras.dataVenda": {
      $gte: ISODate('2019-06-01'),
      $lte: ISODate('2020-03-31')
    }
  } },
  { $addFields: { totalCompras: { $size: "$compras" } } },
  { $sort: { totalCompras: -1 } },
  { $limit: 10 },
  { $unwind: "$compras" },
  { $addFields: 
    { "compras.valorComDesconto": { $subtract: [
      "$compras.valorTotal",
      { $multiply: ["$compras.valorTotal", 0.10] }
    ] } }
  }, 
  { $group: {
    _id: "$endereco.uf",
    totalCompras: { $sum: 1 }
  } },
  { $sort: { totalCompras: -1 } },
  { $limit: 5 }
]).pretty();
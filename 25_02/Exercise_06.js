// # Exercício 06 : 
// Deixe apenas os top 10 clientes com mais compras nesse período.

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
  { $limit: 10 }
]).pretty();
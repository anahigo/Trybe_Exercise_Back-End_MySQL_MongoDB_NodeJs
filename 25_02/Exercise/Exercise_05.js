// # Exercício 05 : 
// Confira o número de documentos retornados pelo pipeline com o método itcount() . Até aqui, você deve ter 486 documentos sendo retornados.

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
  } }
]).itcount();
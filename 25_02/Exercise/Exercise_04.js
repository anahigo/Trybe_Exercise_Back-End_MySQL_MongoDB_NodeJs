// # Exercício 04 : 
// Selecione TODOS os clientes que compraram entre Junho de 2019 e Março de 2020 .

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
]).pretty();
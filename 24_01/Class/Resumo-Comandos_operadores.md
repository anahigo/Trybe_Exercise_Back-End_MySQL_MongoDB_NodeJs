# Operadores de Comparação
**$gt** - Corresponde >

ex:
db.inventory.find({ qty: { $gt: 20 } })

**$gte** - Corresponde >=

ex:
db.inventory.find({ qty: { $gte: 20 } })

**$lt**	- Corresponde <

ex:
db.inventory.find({ qty: { $lt: 20 } })

**$lte** - 	Corresponde <=

ex:
db.inventory.find({ qty: { $lte: 20 } })

**$eq**	- Corresponde ==

ex:
db.inventory.find({ qty: { $eq: 20 } })

**$ne**	- Corresponde !=

ex:
db.inventory.find({ qty: { $ne: 20 } })

**$in**	- Corresponde "||" - Executa comparações de igualdade com mais de um valor no mesmo campo

ex:
db.inventory.find({ qty: { $in: [ 5, 15 ] } })

**$nin** - 	Corresponde "!||" - Executa comparações de igualdade com mais de um valor no mesmo campo

ex:
db.inventory.find( { qty: { $nin: [ 5, 15 ] } } )

# Operadores Lógicos
**$not**	- Corresponde !

ex:
db.inventory.find({ price: { $not: { $gt: 1.99 } } })

**$or**	- Corresponde ||

ex:
db.inventory.find({ $or: [{ qty: { $lt: 20 } }, { price: 10 }] })

**$nor**	- Corresponde "||" - Executa comparações de igualdade com mais de um valor no mesmo campo

ex:
db.inventory.find({ $nor: [{ price: 1.99 }, { sale: true }] })

**$and** - 	Corresponde $$ - Executa comparações de igualdade com mais de um valor no mesmo campo

ex:
db.inventory.find({ $and: [{ price: { $ne: 1.99 }}, { price: { $exists: true }}] }),

**Múltiplas expressões especificando o mesmo operador**
ex:
db.inventory.find({
    $and: [
        {
            $or: [
                { price: { $gt: 0.99, $lt: 1.99 } }
            ]
        },
        {
            $or: [
                { sale : true },
                { qty : { $lt : 20 } }
            ]
        }
    ]
})

**Operador $exists** - Quando o <boolean> é verdadeiro ( true ), o operador $exists encontra os documentos que contêm o campo , incluindo os documentos em que o valor do campo é null . Se o <boolean> é falso ( false ), a query retorna somente os documentos que não contêm o campo.

ex:
db.inventory.find({ qty: { $exists: true } })

db.inventory.find({ qty: { $exists: true, $nin: [ 5, 15 ] } })

# Operadores Update

**$set** - Se o campo não existir, o operador $set adiciona um novo campo com o valor especificado. Se você especificar campos com dot notation , os documentos embedados necessários serão criados para suprir o caminho do campo.

ex:
db.products.update(
  { _id: 100 },
  { $set: {
      quantity: 500,
      details: { model: "14Q3", make: "xyz" },
      tags: [ "coats", "outerwear", "clothing" ]
    }
  }
);

db.products.update(
  { _id: 100 },
  { $set: { "details.make": "zzz" } }
);

db.products.update(
  { _id: 100 },
  { $set: {
      "tags.1": "rain gear",
      "ratings.0.rating": 2
    }
  }
);

**$mul** - O operador $mul multiplica o valor de um campo por um número especificado, persistindo o resultado dessa operação sem a necessidade do operador $set .

ex:
db.products.update(
  { _id: 1 },
  { $mul: { price: NumberDecimal("1.25"), qty: 2 } }
);

**$inc** - Com o operador $inc , você pode incrementar ou decrementar valores em um campo específico, utilizando tanto valores positivos quanto negativos.

ex:
db.increment.update(
  { sku: "abc123" },
  { $inc: { quantity: -2, "metrics.orders": 1 } }
);

**$min** - altera o valor do campo para o valor especificado se esse valor especificado é menor do que o atual valor do campo;

ex:
db.scores.update({ _id: 1 }, { $min: { lowScore: 150 } });

**$max** - faz o mesmo, porém altera o valor do campo se o valor especificado é maior do que o atual valor do campo.

ex:
db.scores.update({ _id: 1 }, { $max: { highScore: 950 } });

**$currentDate** - O operador $currentDate atribui ao valor de um campo a data corrente , utilizando um tipo Date ou timestamp . Se você não especificar o tipo, por padrão, o MongoDB atribuirá o valor do tipo Date . O operador $currentDate tem a seguinte forma: 
{ $currentDate: { <campo>: <typeSpecification>, ... } }

typeSpecification pode ser:
- um valor booleano true para atribuir o valor da data corrente ao campo utilizando o tipo Date ; ou
- um documento que especifica o tipo do campo. Esse documento pode ser { $type: "timestamp" } ou { $type: "date" } . Esse operador é case-sensitive e aceita somente letras minúsculas: timestamp ou date .

ex:
db.customers.updateOne(
  { _id: 1 },
  { $currentDate: {
      lastModified: true,
      "cancellation.date": { $type: "timestamp" }
    }, $set: {
      "cancellation.reason": "user request",
      status: "D"
    }
  }
);

**$rename** - Você pode querer renomear um determinado atributo de um ou mais documentos. Para isso, utilize o operador $rename .

ex:
db.fruits.updateOne(
  { name: "Banana" },
  { $rename: {
      "name": "productName"
    }
  }
);

**$unset** - Para remover um ou mais campos de um documento, utilize o operador $unset.

ex: 
db.fruits.updateMany(
  { productName: "Banana" },
  { $unset: { quantity: "" } }
);
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

**$push** - adiciona um valor a um array . Se o campo não existir no documento, um novo array com o valor em um elemento será adicionado

ex:
use sales;
db.supplies.updateOne(
  {_id: 1 },
  { $push: 
    { 
      items: {
        "name": "notepad",
        "price":  35.29,
        "quantity": 2
      },
    } 
  },
  { upsert: true }
);

  **$each** - Adiciona múltiplos valores a um array ;

  ex:
  db.supplies.updateOne(
    {},
    { $push: {
        items: 
        { $each: [
           {
            "name": "pens",
            "price": 56.12,
            "quantity": 5
          },
          {
            "name": "envelopes",
            "price": 19.95,
            "quantity": 8
          }
        ] }
    } },
    { upsert: false }
  );

  **$slice** -  Limita o número de elementos do array . Requer o uso do modificador $each ;

  **$sort** -  Ordena os elementos do array . Requer o uso do modificador $each ;
  
  ex:
  db.supplies.updateOne(
  { _id: 1},
  { $push: {
      items: { 
        $each: [
          {
            "name" : "notepad",
            "price" : 35.29,
            "quantity" : 2
          },
          {
            "name": "envelopes",
            "price": 19.95,
            "quantity": 8
          },
          {
            "name": "pens",
            "price": 56.12,
            "quantity": 5
          }
      ],
      $sort: { quantity: -1 },
      $slice: 2
    }
    }
  },
  { upsert: true }
);

  **$position** - Especifica a posição do elemento que está sendo inserido no array . Também requer o modificador $each . Sem o modificador $position , o operador $push adiciona o elemento no final do array .

**$pop** - Remove o primeiro ou o último elemento de um array. Passando o valor -1 ao operador $pop você removerá o primeiro elemento. Já se passar o valor 1, você removerá o último elemento do array

ex:
db.supplies.updateOne({ _id: 1 }, { $pop: { items: -1 } });

db.supplies.update({ _id: 1 }, { $pop: { items: 1 } });

**$pull** - remove de um array existente todos os elementos com um ou mais valores que atendam à condição especificada.

ex:
db.supplies.updateMany(
  { },
  {
    $pull: {
      "items": { 
        "name": { $in: ["pens", "envelopes"] }
      },
    }
  }
);

**$addToSet** - O operador $addToSet é utilizado quando você precisa garantir que os valores de um array não sejam duplicados. Ou seja, ele garante que apenas valores únicos estejam presentes no array , tratando o array como se fosse um conjunto (uma vez que conjuntos, na matemática, não podem conter elementos duplicados).

Você precisa ter em mente três aspectos sobre o $addToSet :
- Se você utilizá-lo em um campo que não existe no documento alterado, ele criará um campo do tipo array com o valor especificado na operação;

- Se você utilizá-lo em um campo já existente no documento, mas esse campo não for um array , a operação não funcionará;

- Se o valor passado for um documento, o MongoDB o considerará como duplicado se um documento existente no array for exatamente igual ao documento a ser adicionado, ou seja, possui os mesmos campos com os mesmos valores, e esses campos estão na mesma ordem.

ex:
db.inventory.update(
  { _id: 1 },
  { $addToSet: { tags: "accessories" } }
);

**$all** - seleciona todos os documentos em que o valor do campo é um array que contenha todos os elementos especificados. Em se tratando-se de array , esse operador é equivalente ao operador $and , pois fará a comparação de todos os valores especificados.

ex:
db.inventory.find({ tags: ["red", "blank"] });

**$elemMatch** - seleciona os documentos que contêm um campo do tipo array com pelo menos um elemento que satisfaça todos os critérios de seleção especificados. Ou seja, com esse operador você pode especificar várias queries para um mesmo array .

ex:
db.scores.find(
  { results: { $elemMatch: { $gte: 80, $lt: 85 } } }
);

**$size** - seleciona documentos em que um array contenha um número de elementos especificado.

ex:
db.products.find(
  { tags: { $size: 2 } }
);

**$where** - O operador $where pode ser utilizado para passar uma string contendo uma expressão ou função JavaScript . Esse operador é muito flexível, mas requer que o banco de dados processe a expressão ou função passada para cada documento na coleção. O documento é referenciado na expressão ou função usando this ou obj .

O operador $where não será explorado porque, na versão 3.6 do MongoDB , um outro operador, $expr , que será visto a seguir, passou a suportar expressões de agregação. O operador $expr é mais rápido do que o $where porque não executa JavaScript . Você deve preferir utilizá-lo sempre que possível!

**$expr** - permite que você utilize expressões de agregação e construa queries que comparem campos no mesmo documento.

ex:
db.monthlyBudget.find(
  {
expr: { $gt: [ "$spent", "$budget" ] }
  }
);

**$regex** -  fornece os "poderes" das expressões regulares ( regular expressions ) para seleção de strings . MongoDB utiliza expressões regulares compatíveis com Perl ( PCRE ), versão 8.42, e com suporte a UTF-8 .

ex:
db.products.find({ sku: { $regex: /789$/ } });

**$text** -  faz uma busca "textual" em um campo indexado por um text index. A expressão para utilizar o $text tem a seguinte sintaxe:

{
  $text:
    {
      $search: <string>,
      $language: <string>,
      $caseSensitive: <boolean>,
      $diacriticSensitive: <boolean>
    }
}

  **$search** -  Uma string com os termos que o MongoDB utilizará para fazer o parse e utilizará como filtro. Internamente, o MongoDB faz uma busca lógica ( OR ) sobre os termos, a menos que seja especificado como uma frase inteira;

  ex: 
  db.articles.find({ $text: { $search: "coffee" } });

  **$language** - Opcional. Esse campo determina a lista de stop words que será utilizada na tokenização da busca. Veja a lista de idiomas suportados. Se você passar o valor none , a busca utilizará uma tokenização simples sem utilizar nenhuma lista de stop words ;

  **$caseSensitive** - Opcional. Recebe um valor booleano para habilitar ou desabilitar buscas case sensitive . O valor default é false , o que faz com que as buscas sejam case-insensitive . Veja mais informações sobre case-insensitive aqui;

  **$diacriticSensitive** - Opcional. Recebe um valor booleano para habilitar ou desabilitar busca diacritic sensitive . O valor default também é false .

**$mod** - seleciona todos os documentos em que o valor do campo dividido por um divisor seja igual ao valor especificado (ou seja, executa a operação módulo ).

ex:
db.inventory.find({ qty: { $mod: [4, 0] } });

# Operadores de agregação

**$match** -  filtra os documentos da mesma maneira que os filtros no método find() .

ex: 
db.articles.aggregate(
  [{ $match : { author : "dave" } }]
);

db.articles.aggregate(
  [
    {
      $match: {
        $or: [
          { score: { $gt: 70, $lt: 90 } },
          { views: { $gte: 1000 } }
        ]
      }
    }
  ]
);

**$limit** - limita o número de documentos que será passado para o próximo estágio do pipeline.

ex: 
db.articles.aggregate(
  [
    { $limit : 5 }
  ]
);

**$lookup** - é possível juntar documentos de outra coleção ( join ). Como resultado dessa junção, um elemento do tipo array é adicionado a cada documento da coleção de entrada, contendo os documentos que deram "match" na coleção com a qual se faz o "join".

Existem quatro parâmetros básicos para montar um $lookup :

  **from** : uma coleção no mesmo database para executar o join ;
  **localField** : o campo da coleção de onde a operação de agregação está sendo executada. Será comparado por igualdade com o campo especificado no parâmetro foreingField ;
  **foreingField** : o campo da coleção especificada no parâmetro from que será comparado com o campo localField por igualdade simples;
  **as** : o nome do novo array que será adicionado.

ex: 
db.orders.aggregate([
  {
    $lookup: {
      from: "inventory",
      localField: "item",
      foreignField: "sku",
      as: "inventory_docs"
    }
  }
]);

db.orders.aggregate([
  {
    $lookup: {
      from: "warehouses",
      let: { order_item: "$item", order_qty: "$ordered" },
      pipeline: [
        {
          $match: {
            $expr: {
              $and: [
                { $eq: [ "$stock_item",  "$$order_item" ] },
                { $gte: [ "$instock", "$$order_qty" ] }
              ]
            }
          }
        },
        { $project: { stock_item: 0, _id: 0 } }
      ],
      as: "stockdata"
    }
  }
]);

**$group** - é possível agrupar valores de diversas formas, desde um "distinct" simples até cálculos mais elaborados com a ajuda de outros operadores.

A seguir há uma lista com alguns dos operadores de acumulação mais utilizados:
  **$addToSet** : retorna um array com os valores únicos da expressão para cada grupo;
  **$avg** : retorna a média de valores numéricos. Valores não numéricos são ignorados;
  **$first** : retorna um valor do primeiro documento de cada grupo;
  **$last** : retorna um valor do último documento de cada grupo;
  **$max** : retorna o maior valor de cada grupo;
  **$sum** : retorna a soma de valores numéricos. Valores não numéricos são ignorados.

ex:
db.sales.aggregate([
  {
    $group : {
      _id : "$item",
      count: { $sum: 1}
    }
  }
]);

**$unwind** - "desconstrói" um campo array do documento de entrada e gera como saída um documento para cada elemento do array . Cada documento de saída é o documento de entrada com o valor do campo array substituído por um elemento do array .

ex:
db.inventory.aggregate([{ $unwind : "$sizes" }]);

**$project** - O operador $project tem como uma de suas funções passar adiante no pipeline apenas alguns campos dos documentos vindos do estágio anterior, fazendo isso por meio de uma "projeção", como no método find() . Mas aqui temos uma diferença: esses campos podem ser novos, sendo resultado de um cálculo ou de uma concatenação.
Assim como numa projeção comum, o único campo que precisa ser negado explicitamente é o _id .
Se você especificar um campo que não existe, o $project simplesmente ignorará esse campo, sem afetar em nada a projeção.

ex: 

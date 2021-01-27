# Operadores de Comparação
Os operadores de comparação servem para que você execute queries comparando os valores de campos dos documentos de uma coleção.

Esses operadores são utilizados como parte do filtro de alguns métodos para leitura de documentos do MongoDB . Por exemplo, o find() e o count() , que vimos no dia anterior, ou o update() e o distinct() , que veremos mais adiante, aceitam filtros de comparação.

Vale lembrar que, para comparações de BSON types diferentes, você deve entender a ordem de comparação.
()
Os operadores seguem uma sintaxe padrão que é composta por um subdocumento, como no exemplo abaixo.

{ <campo>: { <operador>: <valor> } }
Além disso, os operadores são identificados pelo prefixo $.

**Operador $lt**
O operador $lt seleciona os documentos em que o valor do campo filtrado é menor do que (<) o valor especificado.

Veja o exemplo abaixo:

db.inventory.find({ qty: { $lt: 20 } })

Essa query selecionará todos os documentos na coleção inventory cujo valor do campo qty é menor do que 20.

**Operador $lte**
O operador $lte seleciona os documentos em que o valor do campo filtrado é menor ou igual (<=) ao valor especificado.

Veja o exemplo abaixo:

db.inventory.find({ qty: { $lte: 20 } })

Essa query selecionará todos os documentos na coleção inventory cujo valor do campo qty é menor ou igual a 20 .
Operador $gt

O operador $gt seleciona os documentos em que o valor do campo filtrado é maior do que (>) o valor especificado.
Veja o exemplo abaixo:

db.inventory.find({ qty: { $gt: 20 } })

Essa query selecionará todos os documentos na coleção inventory cujo valor do campo qty é maior do que 20 .

**Operador $gte**

O operador $gte seleciona os documentos em que o valor do campo filtrado é maior ou igual (>=) ao valor especificado.

Veja o exemplo abaixo:

db.inventory.find({ qty: { $gte: 20 } })

Essa query selecionará todos os documentos na coleção inventory cujo valor do campo qty é maior ou igual a 20.

**Operador $eq**
O operador $eq seleciona os documentos em que o valor do campo filtrado é igual ao valor especificado. Esse operador é equivalente ao filtro { campo: <valor> } e não tem nenhuma diferença de performance.

Veja o exemplo abaixo:

db.inventory.find({ qty: { $eq: 20 } })

A query acima é exatamente equivalente a:

db.inventory.find({ qty: 20 })

Durante a aula você verá mais exemplos que mostrarão que o $eq é apenas uma maneira de explicitar o operador.

**Operador $ne**
Esse operador é o contrário do anterior. Ao utilizar o $ne , o MongoDB seleciona os documentos em que o valor do campo filtrado não é igual ao valor especificado.

db.inventory.find({ qty: { $ne: 20 } })

A query acima retorna os documentos da coleção inventory cujo valor do campo qty é diferente de 20 , incluindo os documentos em que o campo qty não existe.

**Operador $in**
A query abaixo retorna todos os documentos da coleção inventory em que o valor do campo qty é 5 ou 15 . E embora você também possa executar essa consulta utilizando o operador $or , que você verá mais à frente no conteúdo, escolha o operador $in para executar comparações de igualdade com mais de um valor no mesmo campo.

db.inventory.find({ qty: { $in: [ 5, 15 ] } })

**Operador $nin**
O operador $nin seleciona os documentos em que o valor do campo filtrado não é igual ao especificado no array , ou o campo não existe.

db.inventory.find( { qty: { $nin: [ 5, 15 ] } } )

Essa query seleciona todos os documentos da coleção inventory em que o valor do campo qty é diferente de 5 e 15 . 

Esse resultado também inclui os documentos em que o campo qty não existe.

# Operadores Lógicos
Assim como os operadores de comparação, os operadores lógicos também podem ser utilizados nos mesmos métodos para leitura e atualização de documentos do MongoDB . Eles também ajudam a elaborar queries mais complexas, juntando cláusulas para retornar documentos que satisfaçam os filtros.

**Operador $not**
Sintaxe:

{ campo: { $not: { <operador ou expressão> } }

O operador $not executa uma operação lógica de NEGAÇÃO no < operador ou expressão > especificado e seleciona os documentos que não correspondam ao < operador ou expressão > . Isso também inclui os documentos que não contêm o campo.

Veja o exemplo abaixo:

db.inventory.find({ price: { $not: { $gt: 1.99 } } })

Essa query seleciona todos os documentos na coleção inventory em que o valor do campo price é menor ou igual a 1.99 (em outras palavras, não é maior que 1.99 ), ou em que o campo price não exista.

É importante destacar que a expressão { $not: { $gt: 1.99 } } retorna um resultado diferente do operador $lte . Ao utilizar { $lte: 1.99 } , os documentos retornados serão somente aqueles em que o campo price existe e cujo valor é menor ou igual a 1.99 .

**Operador $or**
O operador $or executa a operação lógica OU em um array de uma ou mais expressões e seleciona os documentos que satisfaçam ao menos uma das expressões.

Sintaxe:

{ $or: [{ <expression1> }, { <expression2> }, ... , { <expressionN> }] }

Considere o exemplo a seguir:

db.inventory.find({ $or: [{ qty: { $lt: 20 } }, { price: 10 }] })

Essa query seleciona todos os documentos da coleção inventory em que o valor do campo qty é menor do que 20 ou o valor do campo price é igual a 10 .

**Operador $nor**
O operador $nor também executa uma operação lógica de NEGAÇÃO , porém, em um array de uma ou mais expressões, e seleciona os documentos em que todas essas expressões falhem , ou seja, seleciona os documentos em que todas as expressões desse array sejam falsas.

Sintaxe:

{ $nor: [ { <expressão1> }, { <expressão2> }, ...  { <expressãoN> } ] }

Veja o exemplo abaixo:

db.inventory.find({ $nor: [{ price: 1.99 }, { sale: true }] })

Essa query retorna todos os documentos da coleção inventory que:
- Contêm o campo price com valor diferente de 1.99 e o campo sale com valor diferente de true ;

- Ou contêm o campo price com valor diferente de 1.99 e não contêm o campo sale ;

- Ou não contêm o campo price e contêm o campo sale com valor diferente de true ;

- Ou não contêm o campo price e nem o campo sale .
Pode parecer complexo, mas você fará mais exercícios para praticar mais esse operador.

**Operador $and**
O operador $and executa a operação lógica E num array de uma ou mais expressões e seleciona os documentos que satisfaçam todas as expressões no array. O operador $and usa o que chamamos de avaliação em curto-circuito ( short-circuit evaluation ). Se alguma expressão for avaliada como falsa , o MongoDB não avaliará as expressões restantes, pois a expressão como um todo será falsa independentemente delas.

Sintaxe:

{ $and: [{ <expressão1> }, { <expressão2> } , ... , { <expressãoN> }] }

**Múltiplas expressões especificando o mesmo campo**
Considere o exemplo abaixo:

db.inventory.find({
    $and: [
        { price: { $ne: 1.99 } },
        { price: { $exists: true } }
    ]
})

Essa query seleciona todos os documentos da coleção inventory em que o valor do campo price é diferente de 1.99 e o campo price existe.

**Múltiplas expressões especificando o mesmo operador**
Considere o exemplo abaixo:

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

Essa query seleciona todos os documentos da coleção inventory em que o valor do campo price é igual a 0.99 ou 1.99 , e o valor do campo sale é igual a true ou o valor do campo qty é menor do que 20 . Ou seja, essa expressão é equivalente a (price > 0.99 ou price < 1.99) e (sale = true ou qty < 20).

# Operador $exists
Sintaxe :

{ campo: { $exists: <boolean> } }

Quando o <boolean> é verdadeiro ( true ), o operador $exists encontra os documentos que contêm o campo , incluindo os documentos em que o valor do campo é null . Se o <boolean> é falso ( false ), a query retorna somente os documentos que não contêm o campo.

Veja o exemplo abaixo:

db.inventory.find({ qty: { $exists: true } })

Essa query retorna todos os documentos da coleção inventory em que o campo qty existe.

Você também pode combinar operadores, como no exemplo abaixo:

db.inventory.find({ qty: { $exists: true, $nin: [ 5, 15 ] } })

Essa query seleciona todos os documentos da coleção inventory em que o campo qty existe e seu valor é diferente de 5 e 15 .

# Método sort()
Sintaxe :

db.colecao.find().sort({ "campo": "1 ou -1"})

Quando existe a necessidade de ordenar os documentos por algum campo o método sort se mostra muito útil. Usando um valor positivo, 1 , como valor do campo os documentos da query são ordenados de forma crescente ou alfabética (Ele também ordena por campos com strings ). Em complemento, usando um valor negativo, -1 , os documentos de saída em ordem decrescente ou contra alfabética. Ele pode ser combinado com o um find assim: db.example.find({}, { value, name }).sort({ value: -1 }, { name: 1 }) . O sort só pode ser usado se tiver algum resultado de busca antes, como db.colecao.find().sort({ "campo": -1}) , mas não db.colecao.sort({ campo: 1 }) . Vamos ver um exemplo?

db.example.insertMany([
    { "name": "Mandioquinha Frita", "price": 14 },
    { "name": "Litrão", "price": 8 },
    { "name": "Torresmo", "price": 16 }
])

db.example.find().sort({ "price": 1 }).pretty()

// Resultado esperado:
{
        "_id" : ObjectId("5f7dd0582e2738debae74d6c"),
        "name" : "Litrão",
        "price" : 8
}
{
        "_id" : ObjectId("5f7dd0582e2738debae74d6b"),
        "name" : "Mandioquinha Frita",
        "price" : 14
}
{
        "_id" : ObjectId("5f7dd0582e2738debae74d6d"),
        "name" : "Torresmo",
        "price" : 16
}

db.example.find().sort({ "price": -1 }, { "name" : 1 }).pretty()

// Resultado esperado:
{
        "_id" : ObjectId("5f7dd0582e2738debae74d6d"),
        "name" : "Torresmo",
        "price" : 16
}
{
        "_id" : ObjectId("5f7dd0582e2738debae74d6b"),
        "name" : "Mandioquinha Frita",
        "price" : 14
}
{
        "_id" : ObjectId("5f7dd0582e2738debae74d6c"),
        "name" : "Litrão",
        "price" : 8
}

# Removendo documentos
Para remover documentos de uma coleção, temos dois métodos que são utilizados para níveis de remoção diferentes: o db.colecao.deleteOne() e o db.colecao.deleteMany() . Os dois métodos aceitam um documento como parâmetro, que pode conter um filtro simples ou até mesmo um conjunto de expressões para atender aos critérios de seleção.

**db.colecao.deleteOne()**

Esse método remove apenas um documento, que deve satisfazer o critério de seleção, mesmo que múltiplos outros documentos também se enquadrem no critério de seleção. Se nenhum valor for passado como parâmetro, a operação removerá o primeiro documento.

O exemplo abaixo remove o primeiro documento da coleção inventory em que o campo status é igual a D:

db.inventory.deleteOne({ status: "D" })

**db.colecao.deleteMany()**

Esse método remove todos os documentos que satisfaçam o critério de seleção.

O exemplo abaixo remove todos os documentos da coleção inventory em que o campo status é igual a A :

db.inventory.deleteMany({ status : "A" })
Para remover todos os documentos da coleção, basta não passar parâmetros para o método db.colecao.deleteMany() :

db.inventory.deleteMany( {} )

# Bora treinar tudo!
**Criando dataset**
Para treinar todos os comandos, utilizaremos uma nova dataset, que tem informações sobre filmes. Para importar essa dataset, siga os seguintes passos:

1. Clique no link .

2. Copie todo o conteúdo do link e depois abra o Mongo Shell.

3. Cole todo o conteúdo no CLI do Mongo Shell e confirme com ENTER .

Para confirmar que está tudo funcionando, rode o seguinte comando:

db.filmes.find().count()

Deve retornar o valor 37, que é o número de filmes dentro dessa dataset.

**Apagando uma dataset já alterada**
Caso você altere a dataset, faça o seguinte:

1. Faça o drop da database em que você fez as alterações, com o comando:

db.dropDatabase()

2. Refaça todos os passos de criação de uma nova dataset mostrados acima.

Esses passos são importantes porque trabalharemos na aula ao vivo com essa dataset, assegurando que todos terão os mesmos resultados.
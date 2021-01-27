# Exercise Class
Antes de começar, crie um banco de dados chamado storage e rode a query abaixo. Ele será necessário para os exercícios de fixação.

db.products.insertMany([
  { "name": "Ball", "purchase_price": 7.6, "taxes": 1.9, "sale_price": 12.5, "quantity": 5 },
  { "name": "Baseball bat", "purchase_price": 18.5, "taxes": 5.3, "sale_price": 39.9, "quantity": 12 },
  { "name": "Sneakers", "purchase_price": 10.4, "taxes": 1.50, "sale_price": 14.9, "quantity": 3 },
  { "name": "Gloves", "purchase_price": 2.85, "taxes": 0.90, "sale_price": 5.70, "quantity": 34 },
  { "name": "Jacket", "purchase_price": 28.9, "taxes": 10.80, "sale_price": 59.9, "quantity": 20 },
  { "name": "Mousepad", "purchase_price": 16.6, "taxes": 3.40, "sale_price": 29.9, "quantity": 8 },
  { "name": "Monitor", "purchase_price": 119.9, "taxes": 39.20, "sale_price": 240.6, "quantity": 11 },
]);

# Expressão $add
**Exercício de fixação**
Utilizando o banco de dados storage , faça o seguinte exercício:

1 - Calcule qual o custo total de cada produto, considerando o preço de compra e os impostos.
db.products.aggregate([
  { $project: { _id: 0, name: 1, purchase_total: { $add: ["$purchase_price", "$taxes"] } } }
]);

# Expressão $subtract
**Exercício de fixação**
Utilizando o banco de dados storage , faça o seguinte exercício:

1 - Calcule qual o lucro total de cada produto, considerando o preço de compra, os impostos e seu valor de venda.
db.products.aggregate([
  { $project: { _id: 0, name: 1, total: { $subtract: [ "$sale_price", { $add: [ "$purchase_price", "$taxes" ] }  ] } } }
]);

# Expressão $floor
**Exercícios de fixação**
Utilizando o banco de dados storage , faça os seguintes exercícios:

1 - Retorne o menor número inteiro relativo ao preço de venda de cada produto;
db.products.aggregate([
  { $project: { _id: 0, name: 1, floor_sale_price: { $floor: "$sale_price" } } }
]);

2 - Retorne o maior número inteiro relativo ao lucro total sobre cada produto.
db.products.aggregate([
  { $project: { _id: 0, name: 1, ceil_sale_price: { $ceil: "$sale_price" } } }
]);

# Expressão $abs
**Exercício de fixação**
Utilizando o banco de dados storage , faça o seguinte exercício:

1 - Calcule o valor absoluto do lucro total de cada produto.
db.products.aggregate([
  { $project: { _id: 0, name: 1, total: { $abs: { $subtract: [ "$sale_price", { $add: [ "$purchase_price", "$taxes" ] } ] } } } }
]);

# Expressão $multiply
**Exercícios de fixação**
Utilizando o banco de dados storage , faça os seguintes exercícios:

1 - Calcule qual o valor total em estoque de cada produto, considerando o preço de venda e a quantidade;
db.products.aggregate([
  { $project: { _id: 0, name: 1, total: { $multiply: [ { $add: [ "$purchase_price", "$taxes" ] }  ] } } }
]);

2 - Calcule qual será o lucro total de cada produto caso todo o estoque seja vendido.
db.products.aggregate([
  { $project: { _id: 0, name: 1, total: { $multiply: [ "$sale_price", { $add: [ "$purchase_price", "$taxes" ] }  ] } } }
]);

# Expressão $divide
**Exercício de fixação**
Utilizando o banco de dados storage , faça o seguinte exercício:

1 - Calcule qual será o preço de venda de cada produto caso haja uma promoção de 50% de desconto.
db.products.aggregate([
  { $project: { _id: 0, name: 1, discount: { $divide: ["$sale_price", 2] } } } 
]);

# Estágio $addFields
**Exercício de fixação**
Utilizando o banco de dados storage , faça o seguinte exercício:

1 - Calcule o valor total do estoque, considerando que cada produto valha o mesmo que seu preço de venda. Lembre-se da quantidade.

db.products.aggregate([
  { $addFields: { total_stock_value: { $multiply: ["$purchase_price", "$quantity"] } } }
]);
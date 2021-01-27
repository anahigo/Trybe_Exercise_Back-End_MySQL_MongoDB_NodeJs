# Exercise Class
Antes de começar, crie um banco de dados chamado agg_example e rode a query abaixo. Ele será necessário para os exercícios de fixação.

db.transactions.insertMany([
  { value: 5900, from: "Dave America", to: "Ned Flanders", bank: 'International' },
  { value: 1000, from: "Mark Zuck", to: "Edna Krabappel", bank: 'FloridaBank' },
  { value: 209, from: "Lisa Simpson", to: "Dave America", bank: 'bankOfAmerica' },
  { value: 10800, from: "Arnold Schuz", to: "Mark Zuck", bank: 'JPMorgan' },
  { value: 850, from: "Barney Gumble", to: "Lisa Simpson", bank: 'Citigroup' },
  { value: 76000, from: "Ned Flanders", to: "Edna Krabappel", bank: 'JPMorgan' },
  { value: 1280, from: "Dave America", to: "Homer Simpson", bank: 'Citigroup' },
  { value: 7000, from: "Arnold Schuz", to: "Ned Flanders", bank: 'International' },
  { value: 59020, from: "Homer Simpson", to: "Lisa Simpson", bank: 'International' },
  { value: 100, from: "Mark Zuck", to: "Barney Gumble", bank: 'floridaBank' },
]);

Agora que você já tem uma boa ideia do que é o aggregation pipeline , vamos explorar alguns de seus estágios para ver todo o seu poder! 😉

# Operador $limit
**Exercícios de fixação**
Utilizando o banco de dados agg_example , faça os seguintes exercícios:

1 - Selecione todas as transações feitas pelo cliente chamado "Dave America";
db.transactions.aggregate(
  [{ $match : { from: "Dave America"}}]
);

2 - Selecione todas as transações com o valor entre 700 e 6000, ou que sejam recebidas pela cliente "Lisa Simpson";
db.transactions.aggregate(
  [{ $match : 
    { $or: [
      { value: { $gt: 700, $lt: 6000 } },
      { from: "Lisa Simpson" },
    ]}
  }]
);

3 - Selecione três transações com o valor acima de 1000.
db.transactions.aggregate([
  { $match : { value: { $gt: 1000 } } },
  { $limit: 3 }
]);


# Operador $lookup
**Exercícios de fixação**
Utilizando o banco de dados agg_example , adicione a seguinte collection e faça os exercícios:

db.clients.insertMany([
  { name: "Dave America", State: "Florida" },
  { name: "Ned Flanders", State: "Alasca" },
  { name: "Mark Zuck", State: "Texas" },
  { name: "Edna Krabappel", State: "Montana" },
  { name: "Arnold Schuz", State: "California" },
  { name: "Lisa Simpson", State: "Florida" },
  { name: "Barney Gumble", State: "Texas" },
  { name: "Homer Simpson", State: "Florida" },
]);

1 - Selecione todos os clientes com as suas respectivas transações feitas;

2 - Selecione quatro clientes com as suas respectivas transações recebidas;

3 - Selecione todos os cliente do estado da "Florida" e suas respectivas transações recebidas.

# Operador $group
**Exercícios de fixação**
1 - Utilizando o banco de dados agg_example , faça os exercícios:

2 - Selecione todos os bancos;

3 - Selecione o valor total das transações em cada banco e quantas são;

4 - Selecione o valor total de transações;

5 - Selecione os bancos que têm o valor total de transações maior que 1000.
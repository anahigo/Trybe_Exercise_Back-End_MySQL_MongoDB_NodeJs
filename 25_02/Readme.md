# Agora, a prática
O MongoDb possui diversas ferramentas, como, por exemplo, mongo , mongosh , Compass e outras ferramentas de terceiros. Você pode utilizar o que achar melhor para executar as queries , o importante é realizá-las.

Você continuará utilizando o banco de dados erp do dia anterior. Nos exercícios 1 a 8 , você utilizará o mesmo pipeline . A ideia é começar com um pipeline pequeno e ir adicionando estágios à medida que você for evoluindo nos exercícios. Vamos lá?

**Exercício 1 :** 
Utilize uma combinação das expressões aritméticas e adicione um campo chamado idade à coleção clientes . Algumas dicas:
- arredonde para baixo o valor da idade;
- calcule a idade usando a diferença entre a data corrente e a data de nascimento;
- 1 dia é igual a 86400000 milissegundos.

**Exercício 2 :** 
Utilizando o novo campo idade , conte quantos clientes têm entre 18 e 25 anos.

**Exercício 3 :** 
Remova os estágios $count e $match do exercício anterior e adicione um estágio no pipeline que coloque as compras do cliente no campo compras .

**Exercício 4 :** 
Selecione TODOS os clientes que compraram entre Junho de 2019 e Março de 2020 .

**Exercício 5 :** 
Confira o número de documentos retornados pelo pipeline com o método itcount() . Até aqui, você deve ter 486 documentos sendo retornados.

**Exercício 6 :** 
Deixe apenas os top 10 clientes com mais compras nesse período.

**Exercício 7 :** 
Para esses clientes, adicione um campo chamado compras.valorComDesconto em todas as compras do período, aplicando 10% de desconto sobre o valor total da compra ( valorTotal ).

**Exercício 8 :** 
Ainda nesse pipeline , descubra os 5 estados com mais compras.

**Exercício 9 :**
Descubra o cliente que mais consumiu QUEIJO PRATO . Retorne um documento com a seguinte estrutura:

{
  "nomeCliente": "NOME",
  "uf": "UF DO CLIENTE",
  "totalConsumido": 100
}

**Exercício 10 :** 
Selecione todas as vendas do mês de Março de 2020 , com status EM SEPARACAO . Acrescente um campo chamado dataEntregaPrevista com valor igual a três dias após a data da venda. Retorne apenas os campos clienteId , dataVenda e dataEntregaPrevista .

# Bônus
**Exercício 11 :**
Calcule a diferença absoluta em dias entre a data da primeira entrega prevista e a última, considerando o pipeline do exercício 10.

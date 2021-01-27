# O que vamos aprender?
Hoje, você vai conhecer uma parte muito interessante e importante para vários tipos de operações no MongoDB . Você vai entender o que é, para que serve e como utilizar o Aggregation Framework .

# Você será capaz de:
- Filtrar documentos com o estágio $match ;

- Limitar os resultados com $limit ;

- Juntar dados de uma ou mais coleções com o $lookup ;

- Fazer agrupamentos com o $group ;

- Trabalhar com arrays com o $unwind ;

- Controlar a exibição de campos com o $project .

# Por que isso é importante?
Você deve ter notado que até aqui não foram feitas operações de agrupamento. Isso não foi feito até o momento porque o MongoDB não permite que operações desse tipo sejam feitas simplesmente através do método find() . Para isso, e para muitas outras coisas, existe o Aggregation Framework .
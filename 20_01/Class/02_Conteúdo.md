# O que é e quais são os tipos de bancos de dados
Vamos ter uma visão de águia de como é divido esse mundo:

- Vídeo Trybe

# O que é SQL?
SQL é a linguagem usada para criar, pesquisar, extrair e também manipular dados dentro de um banco de dados relacional. Para que isso seja possível, existem comandos como o SELECT, UPDATE, DELETE, INSERT e WHERE, entre outros, que você aprenderá ao longo do curso.

# Como essas informações (tabelas) são armazenadas?
Todas as pesquisas realizadas dentro de um banco de dados são feitas em tabelas. Tabelas possuem linhas e colunas. Linhas representam um exemplo, ou instância, daquilo que se deseja representar, ao passo que colunas descrevem algum aspecto da entidade representada.

Por exemplo, a imagem a seguir apresenta uma tabela com dados sobre pessoas. Cada linha na tabela representa uma pessoa específica. As colunas descrevem uma característica que queremos armazenar sobre as pessoas; nesse caso, são nome, sobrenome e email.

# Constraints (restrições), chaves primárias e chaves estrangeiras
Uma das grandes vantagens de armazenar seus dados em um banco de dados é que é possível criar regras e restrições ( constraints , em inglês), que ditam exatamente como os dados podem ou não ser inseridos em suas tabelas. Vamos ver um resumo de como isso funciona:

- Vídeo Trybe
* Constraints(restrições) - são regras usadas para limitar os tipos de dados que podem ser inseridos em uma determinada coluna em uma determinada tabela
  * not null - não aceitar valores null como entrada
  * unique - não aceita valores repetidos
  * primary key - valores únicos (not null e unique embutidos)
  * foreing key - referencia a primary key de outra tabela
  * default - valor padrão

Então, depois de ter assistido ao conteúdo acima, vamos tentar chegar a algumas conclusões utilizando como exemplo a tabela a seguir:

Sem ter acesso à estrutura interna de como essa tabela foi criada, tente responder ao seguinte:
1. Quais constraints a coluna address_id poderia ter? Por quê?

2. A coluna city_id é um número. Consegue identificar que tipo de constraint foi aplicado a ela?

3. A coluna address (endereço) possui uma constraint . Qual tipo de constraint seria interessante ser aplicado a ela para que sempre exista um valor na coluna quando uma nova linha for criada?

Temos aqui uma outra tabela:
1. Que tipo de constraint a coluna city_id possui?

2. Qual é o motivo de a coluna country_id não possuir nomes de country (país)? Ela é algum tipo de chave primária ou estrangeira?

Na tabela a seguir:
1. Qual coluna possui uma primary key ?
2. Qual coluna possui uma foreign key ?
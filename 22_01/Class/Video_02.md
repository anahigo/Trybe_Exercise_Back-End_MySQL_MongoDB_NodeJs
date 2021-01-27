# SQL Aula 26 - CHAVE PRIMÁRIA E ESTRAGENGEIRA + DESAFIO

- Vamos aprender o que são chaves primárias e estrangeiras
- Vamos ver exemplos de como usar eles para criar colunas e tabelas, porém vamos ver isso em detalhe na aula sobre criação de tabelas

**Chave Primária**
- Uma chave primária é basicamente uma coluna ou grupo de colunas, usada para identificar uma linha em uma tabela
- Você consegue criar essas chaves primárias através de restrições (ou contraints em inglês), que são regras que você define quando está criando uma coluna
- Assim quando você faz isso você está criando um índice único para aquela coluna ou grupo de colunas

**Sintaxe**
CREATE TABLE nome_Tabela (
  nomeColuna tipoDeDados PRIMARY KEY
  nomeColuna tipoDeDados...
)

**Chave Estrangeira**
- Uma chave estrangeira é uma coluna ou grupo de colunas em uma tabela que identifica unicamente uma linha em outra tabela. 
- Ou seja, uma chave estrangeira é definida em uma tabela onde ela é apenas uma referência e não contém todos os dados ali
- então uma chave estrangeira é simplesmente uma coluna ou grupo de colunas que é uma chave primária em outra tabela

**Regras**
- No SQL Server você define uma chave estrangeira atravéz de um "Foreign Key Constraint" ou Restrição de chave estrangeira
- Uma Restrição de chave estrangeira indica que os valores em uma coluna ou grupo de colunas na tabela filho correspondem os valores na tabela pai
- Nos podemos entender que uma chave estrangeira mantém a "integridade referencial"

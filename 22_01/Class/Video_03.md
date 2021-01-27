# Síntaxe

CREATE TABLE nomeTabela(
  coluna1 tipo restricaoDaColuna,
  coluna1 tipo,
  coluna1 tipo,
  ....
) engine='nome_da_engine'

**Pricipais tipos de restrições que podem ser aplicadas**
NOT NULL - Não permite nulos
UNIQUE - Força que todos os valores em uma coluna sejam diferentes
PRIMARY KEY - Uma junção de NOT NULL e UNIQUE
FOREIGN KEY - Identifica uma condição específica em uma coluna
DEFAULT - Força um valor padrão quando nenhim valor é passado
CHECK - Força uma condição específica em uma coluna.
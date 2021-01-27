# Indexes - O que são e quando usar?

**O que são**
- Uma maneira de estruturar seus dados de uma maneira mais eficiente para que elas possam ser encontradas mais rápido

- Ou seja, onde eu posso encontrar o cliente_id 4562, o cliente_id 8664 ou onde posso encontrar a frase TAL dentro dessa tabela

# Quais tipos existem?
PRIMARY KEY - Usados em campos numéricos ou de texto(não permitem duplicados, apenas um pode existir por tabela)
UNIQUE - Usados em campos numéricos ou de texto(não permitem duplicados, mais de um podem existir por tabela)
INDEX - Usado principalmente em campos numéricos
FULLTEXT INDEX - Usado em campos de texto

# Quando podemos criar um índice
1- Adicionando índice a uma coluna
SQL
CREATE INDEX apelido_para_o_índice ON tabela(coluna);

CREATE FULLTEXT INDEX apelido_para_o_índice ON tabela(coluna);

2- Durante a criação de uma tabela
SQL
CREATE TABLE noticia(
    noticia_id INT PRIMARY KEY,
    titulo VARCHAR(100)
    historia VARCHAR(300)
    INDEX titulo_index(titulo)
)engine=InnoDB;

3- Alterando uma tabela
SQL
ALTER TABLE noticia
ADD INDEX titulo_index(titulo);

# Posso mandar um indice em tudo então?

**Pontos Positivos**
- Acelera suas qeuries SELECT (resultados entregues mais rápido)
- Permite tornar uma coluna única(quando usamos o UNIQUE INDEX ou UNIQUE)
- Permite entregar pesquisas qu envolvem buscas em grandes blocos de texto mais rápido(no caso do FULLTEXT INDEX)

SELECT * FROM banco_de_dados
WHERE match(coluna) against(expressao);

- Aceleram as operações UPDATE que usam WHERE


**Pontos Negativos**
- Indices ocupam espaço no disco
- Indices tornam as operaçoes INSERT, UPDATE e DELETE mais lentas, sendo que cada índice precisa ser atualizado junto com dados


# Indices
-- Criando um índice em uma coluna
CREATE [INDEX | FULLTEXT INDEX | UNIQUE INDEX] nome_indice
ON tabela (coluna);

-- Criando um índice composto, em duas ou mais colunas
CREATE [INDEX | FULLTEXT INDEX | UNIQUE INDEX] nome_indice
ON tabela (coluna1, coluna2);

-- Excluindo índices
DROP INDEX nome_do_indice ON tabela;


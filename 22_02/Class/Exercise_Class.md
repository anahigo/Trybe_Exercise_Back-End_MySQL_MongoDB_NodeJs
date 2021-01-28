# Exercícios de fixação - normalização de dados
Vamos consolidar toda a explicação passada até o momento através de alguns desafios.

**Exercício 1:**
Normalize a tabela a seguir para a 1ª Forma Normal.
Não se preocupe em montar a estrutura em código SQL neste primeiro momento. Crie apenas uma planilha (Excel, Google Sheets, Open Office Calc ou semelhantes) da estrutura esperada.

Funcionario_id	Nome	Sobrenome	Contato	Contato	DataCadastro	Setor
12	Joseph	Rodrigues	jo@gmail.com	(35)998552-1445	2020-05-05 08:50:25	Administração, Vendas
13	André	Freeman	andre1990@gmail.com	(47)99522-4996	5 de Fevereiro de 2020	Operacional
14	Cíntia	Duval	cindy@outlook.com	(33)99855-4669	2020-05-05 10:55:35	Estratégico, Vendas
15	Fernanda	Mendes	fernandamendes@yahoo.com	(33)99200-1556	2020-05-05 11:45:40	Marketing

**Exercício 2:**
Usando a estrutura (já normalizada para 1ª Forma Normal) da tabela anterior, transforme-a agora na 2ª Forma Normal.

**Exerício 3:**
Monte uma query que:
- Crie um banco de dados chamado normalization ;
- Crie todas as tabelas resultantes do exercício 2 (na 2ª Forma Normal);
- Popule todas as tabelas com os dados fornecidos nos exercícios.

# Exercícios de fixação - dump
Selecione um dos bancos de dados já existentes no seu servidor local ( w3schools , northwind , sakila , hr etc.) e faça os passos a seguir:
1 - Exporte a estrutura e os dados (tabelas, triggers, procedures, functions e o schema ) para um dump em formato de arquivo SQL, como foi exibido nas instruções anteriores. Faça o dump através da linha de comando e usando o MySQL Workbench .

2 - Após ter feito isso, abra o arquivo usando algum editor de texto e altere as duas linhas iniciais, mudando o nome do banco a ser criado e do banco a ser usado. Assim seu script vai restaurar um banco novo e não sobrescrever o atual.

No exemplo abaixo, foi feito o backup do banco de dados hotel . Após ser gerado o backup, o arquivo foi aberto, e o nome do banco a ser criado foi alterado para hotel2 . A linha USE `hotel` também foi alterada para USE `hotel2` .

3 - Confira que, ao executar os comandos para restaurar o dump , um novo banco de dados foi criado, como na imagem abaixo.
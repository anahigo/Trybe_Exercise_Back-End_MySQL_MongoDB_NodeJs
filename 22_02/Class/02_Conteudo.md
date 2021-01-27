# O que é a Normalização?
Para que você possa ter uma ideia do que é e de como funciona a normalização, assista ao vídeo abaixo:

Obs.: É recomendado assistir a todos os vídeos em sequência.

- Vídeo Trybe

Assim, com essa informação, podemos começar a aprender sobre normalização com a Primeira Forma Normal .


# 1ª Forma Normal
Para iniciar a organização de um banco de dados, devemos nos atentar para a primeira forma normal - base de todas as outras. Seus preceitos são:
- Colunas devem possuir apenas um valor

- Valores em uma coluna devem ser do mesmo tipo de dados

- Cada coluna deve possuir um nome único

- A ordem dos dados registrados em uma tabela não deve afetar a integridade dos dados

Vamos descobrir se as estruturas que criamos estão dentro da Primeira Forma Normal ? Veja o vídeo a seguir:

- Vídeo Trybe

# 2ª Forma Normal
Para a Segunda Forma Normal , devemos atentar para o seguinte:
- A tabela deve estar na 1ª Forma Normal

- A tabela não deve possuir dependências parciais

Vamos conferir o que mais deve ser feito no vídeo a seguir:

- Vídeo Trybe

# 3ª Forma Normal
Por fim, a Terceira Forma Normal estabelece que:
- A tabela deve estar na 1ª e 2ª Formas Normais;

- A tabela não deve conter atributos (colunas) que não sejam totalmente dependentes na PK (chave primária).

Para entender sobre a Terceira Forma Normal , assista ao seguinte vídeo:

- Vídeo Trybe

Você pode conferir aqui um resumo dos pontos mencionados nos vídeos sobre cada uma das Formas Normais, bem como sua aplicação na prática. 
(https://docs.microsoft.com/pt-br/office/troubleshoot/access/database-normalization-description#normalizing-an-example-table)

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

# O que é um dump?
Um dump (despejo, em português), no contexto de banco de dados, é o ato de pegar o esquema do banco de dados (estrutura de tabelas, banco de dados e suas restrições) e, opcionalmente, também os dados de cada uma dessas tabelas e salvá-las em arquivos de texto, geralmente na forma de instruções SQL .

O intuito desse processo é possibilitar que esses arquivos SQL sejam utilizados em algum outro lugar.

Por exemplo: você pode precisar restaurar um banco corrompido, a partir de um backup do banco feito em determinado momento, para retorná-lo a um estado anterior ao problema. Ou pode querer executar no seu servidor local uma parte de seu banco de dados de produção. Esse último caso é útil, por exemplo, quando você precisa solucionar bugs difíceis de serem reproduzidos de outra forma.

# Como criar um dump de um banco de dados com o MySQL Workbench
Abra o MySQL Workbench e conecte-se ao seu servidor local.
Clique na aba Administration e selecione Data Export.

Para exportar schema e/ou dados, siga as instruções abaixo:
1. Escolha quais bancos de dados devem ser incluídos no backup;

2. Escolha quais tabelas deve ser incluídas no backup;

3. Escolha se Stored Procedures e Stored Functions devem ou não ser incluídas;

4. Escolha se gostaria de exportar apenas estrutura ( Structure Only ), apenas os dados ( Data Only ) ou ambos ( Structure and Data );

5. Escolha se gostaria de incluir os triggers no arquivo de backup;

6. Escolha se gostaria de incluir o esquema (código para criar banco de dados. Ex.: CREATE DATABASE );

7. Selecione o local para onde exportar o arquivo.

Você deve escolher as opções de acordo com suas necessidades.

Feito isso, basta clicar no botão Start Export .

Seu arquivo de dump será salvo no local que você definiu anteriormente.

# Restaurando um banco de dados a partir de um dump com o MySQL Workbench
O modo mais simples de restaurar um dump é executá-lo como um script dentro do MySQL Workbench , algo que você já fez algumas vezes nos dias anteriores.

1 - Abra o MySQL Workbench .

2 - Vá até File -> Open SQL Script.

3 - Navegue até o local onde o arquivo de dump foi salvo.

4 - Execute o script SQL clicando no botão com formato de trovão:

5 - Aguarde até a finalização. Após finalizar a execução do script, clique no botão indicado na imagem a seguir para verificar se o banco foi restaurado corretamente:

# Como criar e restaurar um dump de um banco de dados através da linha de comando
Às vezes você não tem acesso a uma ferramenta gráfica como o Workbench e precisa fazer um dump de um banco de dados. Nesses casos, esse mesmo processo pode ser executado via linha de comando.

Veja o vídeo a seguir com um tutorial que descreve as partes mais comuns desse processo. Lembre-se de que você pode ativar a legenda do vídeo, marcar a opção de tradução automática e depois selecionar o idioma português.

- Vídeo (https://www.youtube.com/watch?v=BsKXzm6qbcM&feature=emb_logo)

# Exercícios de fixação - dump
Selecione um dos bancos de dados já existentes no seu servidor local ( w3schools , northwind , sakila , hr etc.) e faça os passos a seguir:
1 - Exporte a estrutura e os dados (tabelas, triggers, procedures, functions e o schema ) para um dump em formato de arquivo SQL, como foi exibido nas instruções anteriores. Faça o dump através da linha de comando e usando o MySQL Workbench .

2 - Após ter feito isso, abra o arquivo usando algum editor de texto e altere as duas linhas iniciais, mudando o nome do banco a ser criado e do banco a ser usado. Assim seu script vai restaurar um banco novo e não sobrescrever o atual.

No exemplo abaixo, foi feito o backup do banco de dados hotel . Após ser gerado o backup, o arquivo foi aberto, e o nome do banco a ser criado foi alterado para hotel2 . A linha USE `hotel` também foi alterada para USE `hotel2` .

3 - Confira que, ao executar os comandos para restaurar o dump , um novo banco de dados foi criado, como na imagem abaixo.
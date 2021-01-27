# Database Design - Como modelar um banco de dados
Existem alguns passos a serem seguidos durante a modelagem e criação de um banco de dados. Um fluxo bastante comum nesse processo consiste em:
1 - Identificar as entidades , atributos e relacionamentos com base na descrição do problema;

2 - Construir um diagrama entidade-relacionamento para representar as entidades encontradas no passo 1;

3 - Criar um banco de dados para conter suas tabelas;

4 - Criar e modelar tabelas tendo o diagrama do passo 2 como base.

A seguir você verá como realizar cada um desses passos.

**1) Identificando entidades, atributos e relacionamentos**
Primeiramente você deve identificar as entidades , atributos e relacionamentos com base na descrição do problema. Porém, antes disso é necessário entender o significado de cada um deles.
- Entidades:
  São uma representação de algo do mundo real dentro do banco de dados. Elas normalmente englobam toda uma ideia e são armazenadas em formato de tabelas em um banco de dados. Antes de expandir o código a seguir: Volte à descrição do problema acima e busque identificar quais objetos devem se tornar entidades. Depois expanda o código abaixo para verificar. 
  
  <details>
    <summary>
        Ver entidades
    </summary>
    Se sua interpretação foi diferente, não se preocupe. A maneira como você modelará o banco de dados varia de acordo com a sua escala.
    <ul>
        <li>Entidade 1: `Álbum`;</li>
        <li>Entidade 2: `Artista`;</li>
        <li>Entidade 3: `Estilo Musical`;</li>
        <li>Entidade 4: `Canção`.</li>
    </ul>
  </details>

-  Atributos:
  Os atributos são tudo aquilo que pode ser usado para descrever algo. Por exemplo, uma entidade pessoa pode ter nome, altura, peso e idade. Antes de expandir o código a seguir: Considerando a história anterior sobre um catálogo de álbuns musicais, tente deduzir quais propriedades descrevem cada uma das entidades encontradas anteriormente. 
  
  <details>
    <summary>
      Ver atributos
    </summary>
    Se sua interpretação foi diferente, não se preocupe, você praticará mais hoje para que melhore essa percepção.
    <ul>
      <li>Álbum: `album_id`, `titulo`, `preco`, `estilo_id` e `artista_id`;</li>
      <li>Artista: `artista_id` e `nome`;</li>
      <li>Estilo Musical: `estilo_id` e `nome`;</li>
      <li>Canção: `cancao_id`, `nome` e `album_id`.</li>
    </ul>
    <p>
        Algo a ser notado aqui é que algumas informações precisam ser deduzidas, como, por exemplo, a coluna que armazena o identificador único dos registros (aqui chamado de id), que todas tabelas precisam ter.
    </p>
  </details>

- Relacionamentos:
  Os relacionamentos servem para representar como uma entidade deve estar ligada com outra(s) no banco de dados. Há três tipos de relacionamentos possíveis em um banco de dados, que são:
  - Relacionamento Um para Um (1..1): Nesse tipo de relacionamento, uma linha da Tabela A deve possuir apenas uma linha correspondente na Tabela B e vice-versa. Veja o exemplo abaixo:

  Apesar de ser possível inserir essas informações em apenas uma tabela, esse tipo de relacionamento é usado normalmente quando se quer dividir as informações de uma tabela maior em tabelas menores, evitando que as tabelas tenham dezenas de colunas.

  - Relacionamento Um para Muitos ou Muitos para Um (1..N): Esse é um dos tipos mais comuns de relacionamento. Em cenários assim, uma linha na Tabela A pode ter várias linhas correspondentes na Tabela B , mas uma linha da Tabela B só pode possuir uma linha correspondente na Tabela A . Veja o exemplo abaixo:

  Nesse exemplo, uma categoria pode estar ligada a vários livros, embora um livro deva possuir apenas uma categoria.

  - Relacionamento Muitos para Muitos (N..N): O relacionamento muitos para muitos acontece quando uma linha na Tabela A pode possuir muitas linhas correspondentes na Tabela B e vice-versa. Veja o exemplo abaixo:

  Esse tipo de relacionamento pode ser visto também como dois relacionamentos um para muitos ligados por uma tabela intermediária, como é o caso da tabela filme_ator . Pode-se chamar essa tabela intermediária de tabela de junção . Ela é usada para guardar informações de como as tabelas se relacionam entre si. Desta maneira, quando se quer demonstrar que um filme pode contar com vários atores e também que os atores podem atuar em vários filmes, surge a necessidade de um relacionamento muitos para muitos. Antes de expandir o código a seguir: Volte à estrutura de tabelas do Catálogo de Álbuns e tente identificar quais tipos de relacionamentos existem entre as tabelas. Escreva-os em algum lugar e depois expanda abaixo para ver os relacionamentos. Praticar essa habilidade é crucial. 
  
  <details> 
    <summary>
    Ver Relacionamentos
    </summary> 
    Os relacionamentos identificados foram: 
    <ul>
      <li>Um artista pode possuir um ou mais álbuns;</li>
      <li>Um estilo musical pode estar contido em um ou mais álbuns;</li>
      <li>Um álbum pode possuir uma ou mais canções.</li>
    </ul> 
  </details>

**2) Construindo um diagrama entidade-relacionamento**
No segundo passo, será construído um diagrama entidade-relacionamento para representar as entidades encontradas no passo 1.

Existem diversas ferramentas para modelar os relacionamentos em um banco de dados. Hoje será usada a draw.io para criar os modelos. Você pode aprender como utilizar essa ferramenta assistindo a este vídeo.
(https://www.holistics.io/blog/top-5-free-database-diagram-design-tools/)
(https://app.diagrams.net/)
(https://www.youtube.com/watch?v=VgTRNqn2fn0)

Agora é preciso montar um diagrama de relacionamento básico que demonstra como uma entidade é relacionada com a outra, usando o modelo EntidadeA + verbo + EntidadeB .

Considerando as entidades Álbum , Artista , Estilo Musical e Canção , foi construído o seguinte diagrama:

O que você deve fazer quando estiver construindo seu próprio banco de dados é entender quantas vezes uma entidade pode se relacionar com uma outra, para, a partir disso, você poder criar esse primeiro diagrama, como o do exemplo acima, que mostra como as entidades estão relacionadas entre si.

  *Montando um diagrama mais detalhado*
  Para diagramas ER mais detalhados, deve-se incluir o nome das tabelas, suas chaves primárias e estrangeiras, suas colunas e seus relacionamentos.

  Curiosidade: Por questão de convenções e boas práticas na criação de tabelas, não serão usados acentos ou espaços entre os nomes das tabelas.
  (https://www.devmedia.com.br/padronizacao-de-nomenclatura-revista-sql-magazine-100/24710)

  Lembre-se: Existem várias maneiras de se modelar um banco de dados. Então, caso pense diferente do modelo abaixo, entenda que existem diversas formas de se resolver um mesmo problema.

  *Relacionamentos presentes entre as tabelas acima:*
  - Tabelas Artista e Album :
  As tabelas Artista e Album possuem um relacionamento de um para muitos (1..N), em que um artista pode possuir um ou mais álbuns.

  - Tabelas Album e Cancao :
  A tabela Album possui um relacionamento de um para muitos com a tabela Cancao , uma vez que um álbum pode conter várias canções.

  - Tabelas Album e EstiloMusical :
  A tabela EstiloMusical também possui um relacionamento de um para muitos com a tabela Album , uma vez que um estilo musical pode estar contido em vários álbuns.

  *Ponto importante sobre diagramas ER*
  A ideia de um diagrama ER é prover uma representação gráfica para a estrutura de seu banco de dados, descrevendo suas entidades com seus atributos e como elas se relacionam. Essa visualização pode te ajudar tanto a criar e modelar seu banco de dados quanto a entender se sua modelagem precisa ser alterada ou se houve algum erro ao pensar na organização de suas entidades. Com esse diagrama você consegue pensar um pouco mais antes de começar a escrever as queries para criar as tabelas.

  Hora de voltar ao MySQL Workbench e criar um banco de dados!

**3) Criando um banco de dados para conter suas tabelas**
Agora que você já tem um diagrama que representa as tabelas que precisam ser criadas, já pode botar a mão no código.
Ao lidar com a criação e gerenciamento de um banco de dados, você encontrará os seguintes comandos:

-- Cria um banco de dados com o nome especificado.
CREATE DATABASE nome_do_banco_de_dados;

-- Sinônimo de CREATE DATABASE, também cria um banco de dados.
CREATE SCHEMA nome_do_banco_de_dados;

-- Verifica se o banco de dados ainda não existe.
-- Essa verificação é comumente utilizada junto ao CREATE DATABASE para evitar
-- a tentativa de criar um banco de dados duplicado, o que ocasionaria um erro.
IF NOT EXISTS nome_do_banco_de_dados;

-- Lista todos os bancos de dados existentes.
SHOW DATABASES;

-- Define o banco de dados escolhido como ativo.
USE nome_do_banco_de_dados;

Os comandos CREATE DATABASE ou CREATE SCHEMA fazem a mesma coisa, no entanto eles normalmente são utilizados em conjunto com o comando IF NOT EXISTS.Essa verificação é feita para evitar a tentativa de criar um banco de dados duplicado, o que ocasionaria um erro.

Considerando o problema que precisa ser resolvido, hora de nomear o banco de dados de albuns .

CREATE DATABASE IF NOT EXISTS albuns;

**Como definir um banco como ativo**
Talvez você já tenha notado que, até agora, todas as queries têm sido prefixadas ou precedidas do nome do banco de dados, como, por exemplo:

SELECT * FROM sakila.actor;

No entanto, pode-se usar também o comando USE nome_do_do_banco_de_dados , que define um banco de dados como ativo. Com ele, é eliminada a necessidade de utilizar nome do banco de dados como prefixo nas queries. Veja o exemplo a seguir:

USE sakila;
SELECT * FROM actor;

USE sakila;
SELECT * FROM actor;

Com o banco de dados albuns criado, resta apenas o quarto passo, pelo qual serão criadas as tabelas.

**4) Criando e modelando tabelas de acordo com um diagrama ER**
O objetivo para essa seção é criar as seguintes tabelas:

E para isso é necessário entender:
- Quais são os principais tipos de dados no MySQL

  Hora de assistir ao vídeo abaixo, para escolher melhor o tipo de dados durante a criação de uma tabela.

  - Vídeo Trybe

- O que é uma primary e foreign key
  
  No vídeo abaixo você vai entender, em menos de 8 minutos, o que são primary key e foreign key.

  - Vídeo - (https://www.youtube.com/watch?time_continue=7&v=9iVNrhFldeo&feature=emb_logo)

- Como criar uma tabela no MySQL

  Hora de aprender como criar tabelas enquanto são montadas as quatro tabelas do banco de dados albuns neste vídeo.

  - Vídeo Trybe

**Resumão**

Hoje você teve a oportunidade de vivenciar as seguintes etapas, necessárias para dar vida a um banco de dados:
- Como modelar um banco de dados do zero;

- Identificar entidades, atributos e relacionamentos;

- Construir um diagrama entidade-relacionamento;

- Criar um banco de dados;

- Criar e modelar tabelas com base em um diagrama ER.

**Hora de mexer os dedos**
Após ter visto todo o processo de como sair de um problema e chegar até a criação de um banco de dados, é preciso um certo tempo para internalizar esse conteúdo. Com isso em mente, segue a proposta:

Com o intuito de te dar mais tempo para absorver o material de hoje, tente refazer o banco de dados albuns , caso já o tenha criado no decorrer da aula de hoje. Então, apague o banco de dados e recarregue a página para que as respostas sobre como criar o banco de dados e tabelas não estejam visíveis e expandidas.

Tente, com a ajuda do material de hoje, criar o diagrama e o banco novamente por conta própria, sem olhar as respostas, que estão encapsuladas.

É crucial que você tente chegar às suas próprias conclusões após assistir a este conteúdo. Somente assim você terá uma chance melhor de absorver esse material.
# Databases, Coleções e Documentos
O MongoDB armazena documentos BSON dentro de coleções e coleções dentro de databases .
(https://docs.mongodb.com/manual/core/document/#bson-document-format)

**Databases**
Assim como nos bancos de dados relacionais, dentro de uma mesma instância do banco você pode ter um ou vários databases. Uma grande diferença no MongoDB é que não temos a formalidade de criar um database antes de fazer uma operação nele, como por exemplo um insert . O MongoDB cuida disso para você, criando o database, a coleção e por fim o documento a partir do primeiro insert.

Uma vez conectado a uma instância MongoDB através do MongoDB Shell , você só precisa especificar o contexto em que essa escrita acontecerá. Nesse caso, o contexto é o nome do banco de dados que você quer criar:

use meuBanco
db.minhaColecao1.insertOne( { x: 1 })

Feito! A função insertOne() cria tanto o banco de dados meuBanco como a coleção minhaColecao1 , se eles não existirem. Uma dica para nomear bancos e coleções é seguir este guia.
(https://docs.mongodb.com/manual/reference/limits/#restrictions-on-db-names)

**Coleções**
Os documentos no MongoDB são armazenados dentro das coleções . Fazendo um paralelo com os bancos de dados relacionais, uma coleção é equivalente a uma tabela .

*Criando uma coleção*
Como você viu, se uma coleção não existe, o MongoDB cria essa coleção no momento do primeiro insert .

db.minhaColecao2.insertOne({ x: 1 })
db.minhaColecao3.createIndex({ y: 1 })

Veja que tanto as operações insertOne() e createIndex() criam a coleção (se ela não existir).

*Criação Explícita*
Você também pode utilizar o método db.createCollection() para criar uma coleção e especificar uma série de parâmetros, como o tamanho máximo do documento ou as regras de validação para os documentos . Se você não quiser especificar algum desses parâmetros, o uso do método para criação não é necessário. O exemplo abaixo cria uma coleção, especificando sua Collation.

db.createCollection( "minhaColecao4", { collation: { locale: "fr" } } );

Você pode fazer modificações nos parâmetros de uma coleção através do collMod .

**Documentos**
Os documentos são equivalentes aos registros ou linhas de uma tabela nos bancos de dados relacionais. Cada atributo (campo) é equivalente a uma coluna de uma linha da tabela. Sua diferença é que documentos podem conter estruturas mais ricas e armazenar muito mais informações do que você consegue em uma "linha simples" de uma tabela relacional. Abaixo temos uma representação de um registro numa tabela e também o seu correspondente em um documento :

{
    "_id": 1,
    "nome": "Jose",
    "endereco": {
        "logradouro": "Rua 1",
        "cidade": "São Paulo",
        "uf": "SP"
    }
},
{
    "_id": 2,
    "nome": "Maria",
    "endereco": {
        "logradouro": "Rua 2",
        "cidade": "Belo Horizonte",
        "uf": "MG"
    }
}

Como você viu acima, um insert recebe como parâmetro um JSON . Esse parâmetro define os dados e a estrutura do documento. É importante ressaltar que, por ser schemaless , ou seja, sem esquema por default , a estrutura não faz parte da coleção, e sim do documento . Com isso, você pode ter várias "estruturas" por coleção, e quando você fizer uma alteração, faça-a em nível de documento. Por exemplo, a criação, alteração ou remoção de um campo será válida para um conjunto de documentos, que serão especificados através do parâmetro de filtro da query (veremos isso mais à frente).

*Validação de Documentos*
Você pode aplicar uma validação para que cada operação de escrita em sua coleção respeite uma estrutura. Utilize o Schema Validation para isso.
()

**BSON Types**
Por mais que o insert ocorra recebendo um documento JSON , internamente, o MongoDB armazena os dados em um formato chamado BSON ou Binary JSON . Esse formato é uma extensão do JSON e permite que você tenha mais tipos de dados armazenados no MongoDB, não somente os tipos permitidos pelo JSON.

# Insert
Você vai fazer algumas inserções no MongoDB utilizando duas funções específicas e também com schemas diferentes e mais "ricos"!

Os métodos insertOne e insertMany têm suas particularidades e limitações. Enquanto um faz o insert de um único documento por vez, o outro pode inserir milhares em uma única operação! Portanto, saber quando e onde aplicar fará toda a diferença quando você estiver codificando!

Os documentos mais "ricos" são as representações de estruturas bem complexas que você pode armazenar em suas collections , deixando os seus dados mais complexos e com muitas informações, sem a necessidade de joins para acessá-los.

Você já viu como os dados são armazenados no MongoDB , viu o conceito de databases , coleções e documentos . Agora você vai aprender como efetivamente criar esses databases , suas coleções e seus documentos .

**insertOne()**
Veja este vídeo e entenda um pouco mais sobre o insertOne .

- Video Trybe

Agora crie um documento na coleção products , no database sample , com os seguintes atributos e valores:

{
    "productName": "Caixa",
    "price": 20
}

Agora assuma o controle do campo _id , passando um valor qualquer para ele e crie um novo documento com os mesmos atributos e valores do documento anterior.

**insertMany()**
Veja este vídeo sobre o insertMany .

- Video Trybe

Insira mais três documentos na coleção products em uma única operação:

[
    { "productName": "Lapis", "stock": 10, "price": 20,"status":"A"},
    { "productName": "Tesoura", "price": 5, "status": "B" },
    { "productName": "Borracha", "price": 15, "status": "A" }
]

# db.collection.find()

Após inserir documentos em seu banco de dados, você com certeza vai querer recuperá-los! Assim como nos bancos de dados relacionais, no MongoDB temos um método específico para essa operação: o find() .

# Parâmetros do find()

**db.collection.find(query, projection)**

O método find() serve para selecionar os documentos de uma coleção ou de uma view e retorna um cursor com esses documentos.

Esse método recebe dois parâmetros:

* query :
  - Tipo: Documento;

  - Descrição: Opcional. Especifica os filtros da seleção usando os query operators . Para retornar todos os documentos da coleção, é só omitir esse parâmetro ou passar um documento vazio ({}).

* projection :
 - Tipo: Documento;

 - Descrição: Opcional. Especifica quais campos serão retornados nos documentos selecionados pela query . Para retornar todos os campos desses documentos, é só omitir esse parâmetro.

Esse método retorna um cursor para os documentos que correspondem aos critérios de consulta.

# Projeção (projection)
O parâmetro projection determina quais campos serão retornados dos documentos que atendam aos critérios de filtro. O formato recebido por ele é algo como:

{ "campo1": <valor>, "campo2": <valor> ... }

O <valor> pode ser um dos seguintes:
- 1 ou true para incluir um campo nos documentos retornados;

- 0 ou false para excluir um campo;

- Uma expressão usando Projection Operators .

Você pode escolher exibir no resultado da query apenas certos campos, sem a necessidade de exibir sempre todos os campos dos documentos.

A projeção é sempre o segundo parâmetro do método find() .

Veja só este exemplo:

db.movies.insertOne(
    {
        "title" : "Forrest Gump",
        "category" : [ "drama", "romance" ],
        "imdb_rating" : 8.8,
        "filming_locations" : [
            { "city" : "Savannah", "state" : "GA", "country" : "USA" },
            { "city" : "Monument Valley", "state" : "UT", "country" : "USA" },
            { "city" : "Los Anegeles", "state" : "CA", "country" : "USA" }
        ],
        "box_office" : {
            "gross" : 557, "opening_weekend" : 24, "budget" : 55
        }
    }
)

A operação acima insere um documento na coleção movies com vários campos. Com a operação abaixo, selecionamos esse documento na coleção movies , passando como parâmetro de projeção apenas os campos title e imdb_rating :

db.movies.findOne(
    { "title" : "Forrest Gump" },
    { "title" : 1, "imdb_rating" : 1 }
)

Como resultado, teremos o seguinte:

{
    "_id" : ObjectId("5515942d31117f52a5122353"),
    "title" : "Forrest Gump",
    "imdb_rating" : 8.8
}

Note que o campo _id também foi retornado. Isso acontece porque ele é o único campo que você não precisa especificar para que seja retornado. Se você não quiser vê-lo no retorno, é só suprimi-lo da seguinte forma:

db.movies.findOne(
    { "title" : "Forrest Gump" },
    { "title" : 1, "imdb_rating" : 1, "_id": 0 }
)

# Gerenciamento do cursor

Ao executar o método db.collection.find() , o mongo itera automaticamente o cursor para exibir os 20 primeiros documentos. Digite it para continuar a iteração. Assim, mais 20 documentos serão exibidos até o final do cursor.
Um método bastante interessante que é utilizado num cursor é o count() . O método count() retorna o número de documentos de uma coleção, e também pode receber um critério de seleção para retornar apenas o número de documentos que atendam a esse critério.

Você pode retornar o número de documentos de uma coleção com a seguinte operação:

db.movies.count()

Veremos adiante mais utilizações para o método count() .

# Tipos e comparações

O MongoDB trata alguns tipos de dados como equivalentes para fins de comparação. Por exemplo, tipos numéricos sofrem conversão antes da comparação. No entanto, para a maioria dos tipos de dados, os operadores de comparação realizam comparações apenas em documentos em que o tipo BSON do campo destino do documento corresponde ao tipo do operando da query.

Para compreender melhor esse conceito, veja o exemplo abaixo, considerando a seguinte coleção:

{ "_id": "apples", "qty": 5 }
{ "_id": "bananas", "qty": 7 }
{ "_id": "oranges", "qty": { "in stock": 8, "ordered": 12 } }
{ "_id": "avocados", "qty": "fourteen" }

A query abaixo usa o operador de comparação $gt( greater than , maior que, >) para retornar os documentos em que o valor do campo qty seja maior do que 4 :

db.collection.find( { qty: { $gt: 4 } } )

A query trará como retorno os seguintes documentos:

{ "_id": "apples", "qty": 5 }
{ "_id": "bananas", "qty": 7 }

O documento com o _id igual a "avocados" não foi retornado porque o valor do campo qty é do tipo string , enquanto o operador $gt é do tipo integer .

O documento com o _id igual a "oranges" também não foi retornado porque qty é do tipo object .

Nesses casos, vemos o schemaless funcionando na prática!

# Utilizando o find()
**Exemplos**

Para esses exemplos você vai utilizar os documentos de uma coleção chamada bios . Caso você queira executar os exemplos localmente, copie o snippet e execute no seu cliente para inserir essa coleção em sua instância local do MongoDB .

Os documentos dessa coleção de maneira geral têm esse formato:

{
    "_id" : <value>,
    "name" : { "first" : <string>, "last" : <string> },       // documento embedado ou subdocumento
    "birth" : <ISODate>,
    "death" : <ISODate>,
    "contribs" : [ <string>, ... ],                           // Array de Strings
    "awards" : [
        { "award" : <string>, year: <number>, by: <string> }  // Array de subdocumentos
        ...
    ]
}

# Selecionando todos os documentos da coleção
O método find() , quando utilizado sem parâmetros, retorna todos os documentos da coleção juntamente com todos os seus campos. Por exemplo, a operação abaixo retorna todos os documentos da coleção bios :

db.bios.find()

Essa operação corresponde à seguinte query SQL :

SELECT * FROM bios;

# Selecionando documentos com critérios de busca

**Query por igualdade**

A operação abaixo retorna os documentos da coleção bios em que o campo _id é igual a 5 :

db.bios.find( { _id: 5 } )

Essa operação corresponde à seguinte declaração SQL :

SELECT * FROM bios WHERE _id = 5;

Agora, a operação abaixo retorna todos os documentos da coleção bios em que o campo last do subdocumento name é igual a "Hopper" :

db.bios.find( { "name.last": "Hopper" } )

Note que, para acessar campos em subdocumentos, utilizamos dot notation (por exemplo, "sub-documento.campo" ).

# Projetando somente os campos requeridos:

Através do segundo parâmetro do método find(), podemos especificar quais campos serão retornados. O exemplo abaixo retorna todos os documentos da coleção bios, trazendo apenas o campo name de cada documento, que é um subdocumento:

db.bios.find({}, { name: 1 })

Essa operação corresponde à seguinte query SQL:

SELECT name FROM bios;

Procure utilizar a projeção para diminuir a quantidade de campos retornados pelo cursor. Isso ajuda muito no que se refere ao tráfego desses dados na rede!

# Limitando o número de documentos retornados
**cursor.limit()**

Você pode limitar o número de documentos retornados por uma query utilizando o método limit() . Esse método é semelhante à declaração LIMIT em um banco de dados SQL . Uma utilização comum do limit() é para maximizar a performance e evitar que o MongoDB retorne mais resultados do que o necessário para o processamento.

O método cursor.limit() é utilizado da seguinte forma:

db.collection.find(<query>).limit(<número>)
Note que você deve especificar um valor numérico para o limit() .

Um exemplo utilizando a coleção bios:

db.bios.find().limit(5)

A operação acima retornará os cinco primeiros documentos da coleção bios.

Essa operação corresponde à seguinte query SQL :

SELECT * FROM bios LIMIT 5;

**cursor.pretty()*
Com o método pretty() , você pode deixar os resultados exibidos no shell um pouco mais legíveis. Esse método aplica uma indentação na exibição dos resultados no console, de forma que fica bem melhor de ler!

Exemplo de utilização do método pretty() , usando a coleção bios:

db.bios.find().limit(5).pretty()

Utilize o método pretty() à vontade!

# "Pulando" documentos
**cursor.skip(número)**
Acione o método cursor.skip() para controlar a partir de que ponto o MongoDB começará a retornar os resultados. Essa abordagem pode ser bastante útil para realizar paginação dos resultados.

O método cursor.skip() precisa de um parâmetro numérico que determinará quantos documentos serão "pulados" antes de começar a retornar.

O exemplo abaixo na coleção bios pulará os dois primeiros documentos e retornará o cursor a partir daí:

db.bios.find().skip(2)

Você pode combinar os métodos cursor.limit() e cursor.skip() :

db.bios.find().limit(10).skip(5)

Essa operação corresponde à seguinte query SQL :

SELECT * FROM bios LIMIT 10 OFFSET 5;

# Inicialização
**Iniciar** - sudo service mongod start

**Verificação** - sudo service mongod status

**Parando a instância** - sudo service mongod stop

**Reiniciando a instância** - sudo service mongod restart

# Conectando e Desconectando
**Conectando-se ao Mongo via Shell - porta 27017** - mongo

**Conectando-se ao Mongo via Shell - porta 19000** - mongo --port 19000

**Desconectando** - exit

# Comandos Banco de Dados

**Mostrar Banco de Dados existentes** - show dbs

**Criar ou Entrar no Banco de Dados** - use nomeBancoDeDados

ex:
use meuBanco

**Verificar em que Banco de Dados está** - db.getname()

observação: Tem que estar dentro de algum banco de dados

# Comandos Coleção(Tabela) e Documentos(Dados)

**Mostrar Coleção existentes do Banco de Dados selecionado** - show collections

**Mostrar Documentos existentes da Coleção selecionada** - db.nomeColecao.find()

ex:
db.inventory.find({})
db.inventory.find()

**Criando Coleção ou inserindo Documentos com InsertOne** - db.nomeColecao.insertOne({ "Campo": "valor", "Campo": "valor", "Campo": "valor"})

ex: 
sem especificar id - db.products.insertOne({productName:"Caixa", price: 20})

especifiando id -  db.products.insertOne({_id: 100, productName:"Caixa", price: 20})

Observação: Podemos criar a coleção junto com documento, a coleção não precisa existir.

**Criando Coleção ou inserindo Documentos com InsertMany** - db.nomeColecao.insertMany([{ "Campo": "valor1", "Campo": "valor1", "Campo": "valor1" }, { "Campo": "valor2", "Campo": "valor2", "Campo": "valor2"}, { "Campo": "valor3", "Campo": "valor3", "Campo": "valor3" } ]) 

ex: 
ordenado - db.products.insertMany([{ "productName": "Lapis", "stock": 10, "price": 20,"status":"A" }, { "productName": "Tesoura", "price": 5, "status": "B" }, { "productName": "Borracha", "price": 15, "status": "A" } ])

desordenado - db.products.insertMany([{ "productName": "Lapis", "stock": 10, "price": 20,"status":"A" }, { "productName": "Tesoura", "price": 5, "status": "B" }, { "productName": "Borracha", "price": 15, "status": "A" } ] {ordered: false})

Observação: Podemos criar a coleção junto com documento, a coleção não precisa existir.

**Mostrar Documentos especificos inteiros da Coleção selecionada** - db.nomeColecao.find({ "Campo": "valor", "Campo": "valor" })

ex:
db.products.find({ "productName": "Caixa" })

db.inventory.find({ status: "D" }); 

db.inventory.find({ status: "D", item: "paper" });

**Mostrar o primeiro Documento especifico inteiro da Coleção selecionada** - db.nomeColecao.findOne(
{ "Campo": "valor", "Campo": "valor"})

ex:
db.products.find({ "productName": "Caixa" })

**Mostrar Documentos especificos, com Valores específicos da Coleção selecionada** - db.nomeColecao.find(
{ "Campo": "valor", "Campo": "valor"}, - Documento específico
{ "Campo": 1 ou true, "Campo": 0 ou false } - Valores específicos
)

Onde:
1 ou true para incluir um "Campo" nos documentos retornados;
0 ou false para excluir um "Campo", se não colocar o campo tb excluí

ex:
db.products.find({"price": 20}, {"productName": 1, "stock": 1})

db.inventory.find({ status: "A" }, { item: 1, status: 1 }); // ou
db.inventory.find({ status: "A" }, { item: true, status: true });

db.inventory.find({ status: "A" }, { status: 0 }); //ou
db.inventory.find({ status: "A" }, { status: false }

**Mostrar o primeiro Documento especifico, com Valores específicos da Coleção selecionada** - 
db.nomeColecao.findOne(
{ "Campo": "valor", "Campo": "valor"}, - Documento específico
{ "Campo": 1 ou true, "Campo": 0 ou false } - Valores específicos
)

Onde:
1 ou true para incluir um "Campo" nos documentos retornados;
0 ou false para excluir um "Campo", se não colocar o campo tb excluí

ex:
db.products.findOne({"price": 20}, {"productName": 1, "stock": 1})

**Mostrar quantidade de Documentos especicado da Coleção selecionada** - 
db.nomeColecao.find(<query>).limit(<número>)

ex:
db.bios.find().limit(5)

db.inventory.find().limit(2);
db.inventory.find({ status: "A" }).limit(1);

Observação: Corresponde ao SELECT * FROM nomeTabela LIMIT qtddEspecificada;

**Mostrar quantidade de Documentos especicado e mostrando a partir de quanto da Coleção selecionada** - 
db.nomeColecao.find(<query>).skip(<número>)

ex:
db.bios.find().skip(2) 

db.bios.find().limit(10).skip(5)

db.inventory.find().skip(2);

db.inventory.find({}, { item: 1 }); // retorna todos os cinco documentos
db.inventory.find({}, { item: 1 }).skip(0).limit(2); // retorna o primeiro e segundo documentos
db.inventory.find({}, { item: 1 }).skip(1*2).limit(2); // retorna o terceiro e quarto documentos
db.inventory.find({}, { item: 1 }).skip(2*2).limit(2); // retorna o último elemento
db.inventory.find({}, { item: 1 }).skip(3*2).limit(2); // retorna nada

Observação: Corresponde ao SELECT * FROM nomeTabela LIMIT qtddEspecificada OFFSET qtddEspecificada;

**Mostrar Documentos de forma organizada** - db.nomeColecao.find().pretty()

ex:
db.bios.find().limit(5).pretty()

**IT** - O mongo itera automaticamente o cursor para exibir os 20 primeiros documentos. Digite **it** para continuar a iteração. Assim, mais 20 documentos serão exibidos até o final do cursor.

**Mostrar quantos Documentos existem em uma Coleção** - db.nomeColecao.count()

ex:
db.products.count()

**Remover Coleção** - db.nomeColecao.drop()

ex:
db.inventory.drop();

db.users.drop();

**Método sort()** 
Ordem crescente - db.nomeColecao.find().sort({ "campo": 1}) 

ex:
db.example.find().sort({ "price": 1 }).pretty()

Ordem decrescente - db.nomeColecao.find().sort({ "campo": -1}) 

ex:
db.example.find().sort({ "price": -1 }, { "name" : 1 }).pretty()

**Atulizar um documento** - db.nomeColecao.updateOne({DadoAtualizar}, {ConteudoAtulizado})

ex:
db.inventory.updateOne(
  { item: "paper" },
  { $set: { "size.uom": "cm", status: "P" } }
);

**Atulizar vários documentos** - db.nomeColecao.updateMany({DadoAtualizar}, {ConteudoAtulizado})

ex:
db.inventory.updateMany(
  { "qty": { $lt: 50 } },
  { $set: { "size.uom": "in", status: "P" } }
);

# Operações de Agregação
Basicamente, as operações de agregação processam dados e retornam resultados calculados. Essas operações podem agrupar valores de múltiplos documentos ou coleções, executar uma variedade de operações nesses dados agrupados e, por fim, retornar um único resultado. O MongoDB fornece três caminhos para executar operações de agregação: aggregation pipeline , map-reduce function e single purpose aggregation methods. Neste módulo, você se aprofundará no aggregation pipeline, o método mais utilizado e recomendado pela MongoDB .

**Agregação** - db.nomeColecao.aggregate();

# Configurando a inicialização
**Ativar inicialização automático** - sudo systemctl enable mongod.service

**Desativar inicialização automático** - sudo systemctl disable mongod.service

# Desinstalando o MONGODB
**Parar a instância** - sudo service mongod stop

**Remover pacotes instalados** sudo apt-get purge mongodb-org*

**Remover os arquivos de dependências 1** - sudo apt-get autoremove 

**Remover os arquivos de dependências 2** - sudo apt-get autoclean

**Verificação da remoção os arquivos de dependências 1** - sudo rm -rf /var/log/mongodb

**Verificação da remoção os arquivos de dependências 2** - sudo rm -rf /var/lib/mongodb

**Verificação desinstalção** - mongod --version

/home/ana/Trybe/Exercise/Exercise_Back_End/23_01/Exercise/Books.json
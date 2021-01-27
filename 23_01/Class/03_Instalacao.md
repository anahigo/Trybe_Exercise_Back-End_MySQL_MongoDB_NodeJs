# O MongoDB
Neste módulo, você utilizará como banco de dados NoSQL o MongoDB , que é o banco de dados NoSQL mais utilizado do mundo. O MongoDB está enquadrado na classe de banco de Documentos , descrita na introdução deste módulo .
(https://app.betrybe.com/course/back-end/nosql)

O MongoDB começou a ser desenvolvido em 2007 e nasceu a partir de uma necessidade de três desenvolvedores de software que não encontraram nenhum banco de dados à época que suprisse os requisitos do seu projeto. Em 2009, esse projeto se tornou Open Source e continuou sua evolução até abrir capital em 2017 e se tornar a primeira empresa de banco de dados, depois de 40 anos, a entrar para a NASDAQ . Desde então, a MongoDB vem liderando o mercado de NoSQL, oferecendo um produto Open Source com várias features para o mercado corporativo, através de sua versão Enterprise .

O MongoDB vem evoluindo muito rapidamente desde sua criação, e hoje é o banco de dados NoSQL mais utilizado do mundo, ocupando também o quinto lugar no ranking geral de uso de bancos de dados. Veja o ranking aqui.
(https://db-engines.com/en/ranking)

# Tipos de instalação
O MongoDB disponibiliza três tipos de instalação:
1. Standalone
Apenas indicada para ambientes de desenvolvimento.

2. Replica Set
Mínimo indicado para ambientes de produção. Nesse modelo, os dados são replicados em cada um dos servidores do cluster e temos apenas um ponto de escrita. Em alguns casos, podemos utilizar os demais servidores para escalar a leitura.

3. Shard
Esse é um modelo de instalação no qual podemos escalar a escrita de informações no banco. Os dados são divididos no cluster através de chaves de partição que chamamos de shard key . Essa chave pode ser composta por um ou mais atributos do documento, e sua escolha pode afetar a performance, eficiência e escalabilidade do banco. Escalar escritas significa dar mais capacidade para que o banco de dados processe mais dessas operações, aumentando assim a performance para essas operações.

# Instalação
Agora você vai aprender a instalar uma instância local standalone do MongoDB e deixá-la pronta para utilização.
Veja como é simples a instalação no vídeo abaixo, depois siga o passo a passo para instalar em seu computador:

- Vídeo Trybe

# Escolhendo a distribuição
O MongoDB está disponível para os seguintes sistemas operacionais:
- Linux

- Windows

- MacOS

Você utilizará a versão 4.2 Community Edition para Linux, mais especificamente para a distribuição Ubuntu 18.04 LTS . Ela também funciona para o sistema Elementary normalmente. Caso você esteja utilizando MacOS, siga as instruções deste link
(https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/)

# Instalando o MongoDB Community Edition
Seguindo os passos abaixo, você instalará o MongoDB utilizando o apt package manager.
1. Importando a chave pública utilizada pelo gerenciamento de pacotes

  Abra o terminal e utilize o comando abaixo para importar chave pública GPG do MongoDB.

  wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -

  Esse comando deve retornar um OK .

  Porém, se você receber um erro indicando que gnupg não está instalado, faça como abaixo:
  1 - Instalar o gnupg e as bibliotecas necessárias através do comando:
  sudo apt-get install gnupg

  2 - Após a instalação, tente importar a chave outra vez:
  wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -

2. Crie o arquivo de lista ( list file ) para o MongoDB

  Crie o arquivo /etc/apt/sources.list.d/mongodb-org-4.2.list para o Ubuntu 18.04 (Bionic):

  echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

3. Recarregue o banco de dados local de pacotes

  sudo apt-get update

4. Instale os pacotes do MongoDB
  Você pode instalar a última versão estável do MongoDB ou uma versão específica.

  Para instalar a última versão estável, utilize o comando abaixo:

  sudo apt-get install -y mongodb-org

Pronto! Agora você já tem a última versão estável do MongoDB instalada e pronta para ser executada, mas antes vamos dar uma olhada nos pacotes que foram instalados.

# Os pacotes instalados
Você deve ter notado que, durante a instalação, alguns pacotes adicionais foram instalados:

1 - mongodb-org-server : esse pacote contém o que podemos chamar de "servidor" do MongoDB. Contém todos os recursos necessários para que uma instância do banco seja executada;

2 - mongodb-org-shell : o shell é onde você se conecta com o MongoDB, através do terminal. É uma interface que suporta JavaScript e é super completa para administração de instâncias e clusters;

3 - mongodb-org-mongos : pronuncia-se "Mongo S" e só se faz necessário em ambientes Shard . Não entraremos em detalhes sobre ele agora;

4 - mongodb-org-tools : esse pacote contém algumas ferramentas nativas do MongoDB. Por exemplo:
  mongodump : ferramenta para extrair dados no formato BSON (falaremos deles mais adiante). Em alguns ambientes, pode fazer parte da estratégia de backup

  mongorestore : ferramenta para restaurar backups gerados pelo mongodump

  mongoimport : ferramenta para importar arquivos JSON , CSV ou TSV para uma instância do MongoDB
  
  mongoexport : exporta dados de uma instância do MongoDB para arquivos JSON ou CSV
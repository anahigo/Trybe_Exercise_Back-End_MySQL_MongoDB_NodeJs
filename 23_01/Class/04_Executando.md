# Executando o MongoDB Community Edition

**Considerações sobre o ulimit**
Alguns sistemas operacionais baseados em UNIX limitam os recursos de sistema que uma sessão pode utilizar. Esses limites têm grande impacto negativo para a operação do MongoDB, e em ambientes de produção devem ser observados com muita atenção. Veja a seção UNIX ulimit Settings da documentação do MongoDB para maiores informações.(https://docs.mongodb.com/manual/reference/ulimit/)

**Diretórios de trabalho**
Se você instalou o MongoDB via apt (gerenciador de pacotes), então algumas configurações são executadas e mantidas em diretórios do sistema operacional. Por default , no Linux, os dados ficarão armazenados em /var/lib/mongodb , e o log de funcionamento, em /var/log/mongodb . No MacOS, os dados e os logs ficam em /usr/local/var/mongodb e /usr/local/var/log/mongodb , respectivamente.

Por padrão, o MongoDB roda utilizando a conta de usuário mongodb , que também foi criada durante a instalação. Se você quiser rodar uma instância com outro usuário, deverá dar as permissões para ele nos diretórios de dados e log.

**Arquivo de configuração**
O pacote oficial inclui um arquivo de configuração ( /etc/mongod.conf ). Essas configurações (como especificação dos caminhos dos diretórios de dados e log) têm efeito após o startup da instância. Logo, se você fizer qualquer modificação nesse arquivo com a instância do MongoDB rodando, deverá reiniciá-la para que tenha efeito.
(https://docs.mongodb.com/manual/reference/configuration-options/#conf-file)

# Mãos à obra, vamos executar!
1. Iniciando o MongoDB
No Linux:

sudo service mongod start

No MacOS:

brew services start mongodb-community

2. Verifique se o MongoDB foi iniciado com sucesso
No Linux:

sudo service mongod status

No MacOS:

brew services list | grep mongodb-community

Você também pode checar o arquivo de log que, por default, é localizado em /var/log/mongodb/mongod.log , no Linux, ou em /usr/local/var/log/mongodb , no Mac. Você pode verificar se a instância está rodando e pronta para conexões através da linha abaixo:

[initanlisten] waiting for connections on port 27017

**Parando a instância**
No Linux:

sudo service mongod stop

No MacOS:

brew services stop mongodb-community

**Reiniciando a instância**
No Linux:

sudo service mongod restart

No MacOS:

brew services restart mongodb-community

**Configurando a inicialização do servidor MONGODB**
Por padrão, após a instalação, seu servidor vai estar configurado para não iniciar junto ao sistema. Caso queira ativar o início automático quando ligar o computador, utilize o comando:

sudo systemctl enable mongod.service

Caso não queira mais que isso aconteça para poupar memória RAM, você pode desativar o início automático utilizando o comando:

sudo systemctl disable mongod.service

Na primeira vez que for utilizar após iniciar o computador, será necessário iniciar o servidor com o comando:

sudo service mongod start

# Desinstalando o MONGODB
Caso sua instalação tenha retornado algum problema, siga os passos abaixo para desinstalar e tente realizar a instalação novamente.

Preste muita atenção aos comandos. Pare sua instância do mongodb:

sudo service mongod stop

Primeiro remova todos os pacotes instalados:

sudo apt-get purge mongodb-org*

Agora remova os arquivos de dependências que não são mais necessários, e em seguida, remova as versões antigas dos arquivos de pacotes.

sudo apt-get autoremove

sudo apt-get autoclean

Após, remova os arquivos do mongodb que podem ter ficado para trás.

sudo rm -rf /var/log/mongodb

sudo rm -rf /var/lib/mongodb

Se a desinstalação for concluída com sucesso, o comando mongod --version não deve retornar a versão do seu mongodb.

## Informação importante
Por default , o MongoDB só permite conexões locais, ou seja, apenas de clients que estejam rodando na mesma máquina onde a instância estiver sendo executada. Para alterar essa configuração e permitir conexões remotas, veja IP Binding .

(https://docs.mongodb.com/manual/core/security-mongodb-configuration/)

# Conectando

Você vai aprender como se conectar ao MongoDB através do Shell.

**Conectando-se ao Mongo via Shell**

Veja no vídeo como você pode se conectar ao MongoDB Shell:

- Vídeo Trybe
Como você viu durante a instalação, um dos componentes do pacote do MongoDB é o MongoDB Shell . Esse componente é uma interface de linha de comando que lhe permite conectar-se a e administrar uma instância do MongoDB.
Para acessar o MongoDB Shell é muito simples. Com a instância rodando, basta executar o comando abaixo:

mongo

Assim você já estará dentro da instância, que por default está rodando na porta 27017 (a porta padrão para instâncias MongoDB). Se você quiser acessar uma instância em outra porta, basta passar o parâmetro port :

mongo --port 19000

O retorno deve ser algo parecido com:

MongoDB shell version v4.2.2
connecting to: mongodb://127.0.0.1:19000/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("f0c79e43-ead0-42d9-bd7d-c8d6857e7221") }
MongoDB server version: 4.2.2
>

Você tem duas informações importantes:
- na primeira linha, é exibida a versão do MongoDB Shell . Nesse caso, é v4.2.2

- na penúltima linha, é exibida a versão do MongoDB Server , que também é a mesma: v4.2.2

A partir de agora, tudo o que você digitar será dentro da instância MongoDB. Veremos alguns comandos ao longo do bloco.

Para sair da instância e voltar ao terminal da sua máquina, basta digitar:

exit

Veja mais parâmetros permitidos no MongoDB Shell aqui .
(https://docs.mongodb.com/manual/reference/mongo-shell/)

Existem outras interfaces visuais para o MongoDB como o Compass , porém o MongoDB Shell ja contempla tudo que será utilizado durante o curso, tornando o Compass totalmente opcional.
(https://www.mongodb.com/try/download/compass)
# Instalando MySQL Server
Agora vamos instalar as ferramentas que você usará neste curso: o MySQL Server e o MySQL Workbench.

Observação: em função das diversas distribuições do Linux, é recomendado pesquisar as instruções de instalação específicas para sua distribuição. Exemplo: "How to install MySQL Server on {Nome da sua distribuição}".

Digite sudo apt update na linha de comando:
sudo apt update

Digite sudo apt install mysql-server e aperte enter, logo em seguida aceite a instalação digitando y e tecle enter.
sudo apt install mysql-server

# Verificando o status da instalação
Uma instância de um banco de dados é similar à instalação de um software (mais especificamente um serviço) que roda em segundo plano no seu computador. Existem serviços que rodam tanto localmente em sua máquina quanto em servidores remotos ao redor do mundo.

Com isso em mente, vamos ver agora como você pode verificar manualmente se o serviço do MySQL está rodando corretamente. Isso pode ser útil, caso tenha problemas ao se conectar à instância que acabou de instalar:

1. Abra o terminal e digite o seguinte comando (deve ser exibido o status de Active )
sudo systemctl status mysql

2. Caso o serviço esteja parado, você pode usar o comando a seguir para iniciá-lo:
systemctl start mysql

3. Para parar o serviço do MySQL , você pode usar o comando stop
systemctl stop mysql

4. Para sair, aperte ctrl+c.

# Configurando a inicialização do servidor MYSQL
Por padrão, após a instalação, seu servidor vai estar configurado para iniciar junto ao sistema. Caso não queira que isso aconteça, para poupar memória RAM, você pode desativar o início automático utilizando o comando:
sudo systemctl disable mysql

A primeira vez que for utilizar após iniciar o computador, será necessário iniciar o servidor com o comando:
sudo service mysql start

Se desejar ativar novamente que ele inicie junto ao computador, basta usar o comando:
sudo systemctl enable mysql

# Desinstalando o MySQL Server
Caso sua instalação tenha retornado algum problema, siga os passos a seguir para desinstalar e tente realizar a instalação novamente.

Preste muita atenção aos comandos.

Primeiro remova todos os pacotes instalados:
sudo apt-get remove --purge mysql-server mysql-client mysql-common

Agora remova os arquivos de dependências que não são mais necessários e, em seguida, remova as versões antigas dos arquivos de pacotes.
sudo apt-get autoremove

sudo apt-get autoclean

Na sequência, remova os arquivos do mysql que podem ter ficado para trás.
sudo rm -rf /var/lib/mysql

sudo rm -rf /etc/mysql 

Se a desinstalação for concluída com sucesso, o comando mysql --version não deve retornar a versão do seu mysql.

# MySQL na linha de comando
Após seguir os passos anteriores, você poderá agora acessar seu servidor pela linha de comando. Para visualizar quais bancos de dados estão disponíveis, você deve usar o comando:
sudo mysql

É possível ver todos os bancos de dados que estão instalados atualmente digitando o seguinte comando (não se esqueça do ponto e vírgula):
show databases;

# Comandos mais comuns

Selecionar um banco de dados:
use nome_do_banco_de_dados_que_quer_conectar;

Visualizar tabelas:
show tables;

Visualizar estrutura de uma tabela:
describe nome_da_tabela;

Criar um banco de dados:
create database nome_do_banco_de_dados;
# Instando uma interface gráfica (MySQL Workbench)
Vamos agora fazer a instalação do MySQL Workbench , a interface gráfica mais utilizada para o MySQL.

Observação: Em função das diversas distribuições do Linux, é recomendado pesquisar as instruções de instalação específicas para sua distribuição. Exemplo: "How to install MySQL Workbench on {Nome da sua distribuição}".

1. Para fazer essa instalação, basta ir até este link e selecionar a opção "Ubuntu Linux".
(https://downloads.mysql.com/archives/workbench/)

2. Selecione a opção mais antiga, para melhor compatibilidade.

3. Na página a seguir, não é necessário criar uma conta. Clique em "No thanks, just start my download" e faça o download.

4. Navegue até a pasta onde foi feito o download, rode o comando a seguir e aceite a instalação:
sudo apt install ./nome-do-arquivo
#ex: apt install ./mysql-workbench-community_8.0.18-lubuntu18.04_amd64.deb

ATENÇÃO : Depois de fazer a instalação do Workbench, no passo a seguir, será preciso entrar com a senha que você definir. Para isso, você fará:
sudo mysql -u root -p

5. Em seguida, digite a sua senha (caso tenha seguido o tutorial, apenas aperte enter).

6.Então digite:
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'sua_senha_aqui'; flush privileges;

ATENÇÃO : A única coisa que você precisa alterar nessa linha de comando é 'sua_senha_aqui'. Você pode escolher uma senha ou não, deixando apenas ''

7. Pronto, agora abra o MySQL Workbench . Após abri-lo, você estará na tela inicial, na qual você deverá selecionar o servidor em que quer entrar. Será pedida uma senha, e você deve digitar password .

# Restaurando o banco de dados de prática sakila

Após fazer a instalação do MySQL Workbench , faça o download do arquivo de backup aqui .
(https://course.betrybe.com//back-end/sakila.sql)

1. Agora abra o MySQL Workbench.

2. Vá até File->Open SQL Script.

3. Navegue até o local em que você fez o download do arquivo e selecione-o.

4. Execute o script SQL clicando no botão a seguir:

5. Aguarde até a finalização. Possivelmente seu computador vai travar por alguns segundos. Depois disso, clique no botão a seguir para verificar se o banco foi restaurado corretamente:

6. Caso você veja a seguinte estrutura, então tudo ocorreu corretamente:


# Utilizando as principais features do workbench (Crash course do workbench)
Entenda em menos de 5 minutos as principais funcionalidades que você deve saber para continuar o curso:

- Vídeo Trybe

# O que é uma entidade?
Quando se fala de entidades de um banco de dados, estamos normalmente falando de uma tabela que representa algum conceito do mundo real que você quer descrever (pessoa, eventos, acontecimentos) e suas propriedades (altura, horário do evento, nome do acontecimento). A entidade pessoa , por exemplo, pode ter as propriedades de altura, peso e idade. Uma entidade festa pode possuir as propriedades horário do evento, público-alvo e data da festa. Por fim, uma entidade venda pode possuir as propriedades valor da venda, dia da venda, produto vendido etc.

Em alguns desses casos, as entidades são individuais e não se relacionam entre si, porém às vezes elas são ligadas umas com as outras através de relacionamentos. Vamos ver mais sobre isso a seguir.

# Como os dados são ligados?
Existem quatro tipos de relacionamento em um banco de dados.

- Um para Um
Uma linha da Tabela A só deve possuir uma linha correspondente na tabela B ou vice-versa.

Na imagem acima, um empregado só pode estar relacionado a um pagamento, e um pagamento deve estar relacionado a apenas um empregado.

Apesar de ser possível inserir essas informações em apenas uma tabela, esse tipo de relacionamento é usado normalmente quando se quer dividir as informações de uma tabela maior em tabelas menores por questões de performance, a fim de evitar tabelas com dezenas de colunas, ou por várias outras questões específicas de um negócio.

- Um para Muitos ou Muitos para Um
Esse é um dos tipos mais comuns de relacionamento. Em cenários assim, uma linha na tabela A pode ter várias linhas correspondentes na tabela B , mas uma linha da tabela B só pode possuir uma linha correspondente na tabela A .

Na imagem acima, uma categoria pode estar ligada a vários livros; porém um livro deve possuir apenas uma categoria.

- Muitos para Muitos
O tipo de relacionamento muitos para muitos acontece quando uma linha na tabela A pode possuir muitas linhas correspondentes na tabela B e vice-versa.

O relacionamento muitos para muitos pode ser visto também como dois relacionamentos um para muitos ligados por uma tabela intermediária, como é o caso da tabela filme_ator do banco sakila . Podemos chamar essa tabela intermediária de tabela de junção. Ela é usada para guardar informações de como as tabelas se relacionam entre si.

Dessa maneira, quando queremos demostrar que um filme pode contar com vários atores, e também que os atores podem atuar em vários filmes, surge a necessidade de um relacionamento muitos para muitos.

Vamos ver alguns outros exemplos no vídeo abaixo:

- Vídeo Trybe
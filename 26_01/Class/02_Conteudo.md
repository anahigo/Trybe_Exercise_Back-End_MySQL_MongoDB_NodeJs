# O que é NodeJS?
Como dito anteriormente, o NodeJS surgiu do V8, que é a ferramenta do Google Chrome responsável por ler e executar as instruções que escrevemos em JavaScript, processo comumente chamado de interpretar o código. Ao software responsável por interpretar o código, dá-se o nome de interpretador , engine e, por vezes, de runtime . Por isso, é comum dizer que o NodeJS é um runtime JavaScript.

Apesar de ser baseado no V8, o NodeJS possui algumas diferenças em relação ao interpretador que funciona nos navegadores. Dentre elas, as principais são a ausência de métodos para manipulação de páginas web e a presença de métodos que permitem acessar o sistema de arquivos e a rede de forma mais direta.

# Por que usar NodeJS
**Ele está por toda a parte**
Como dito anteriormente, o uso do NodeJS pelo mercado de tecnologia vem crescendo muito nos últimos anos. Dados do site ModuleCounts.com mostram que, atualmente, o npm, que é onde os pacotes NodeJS são disponibilizados, é o repositório com mais pacotes quando comparado a repositórios de outras grandes linguagens, como mostra o gráfico abaixo:
(https://modulecounts.com/)

Ter muitos pacotes publicados no repositório atual nos dá uma ideia de duas grandes vantagens que o NodeJS tem sobre tecnologias concorrentes: uma comunidade extremamente ativa e uma grande quantidade de ferramentas para resolver os mais diversos tipos de problema.

Curiosidade : Existe um drinking game no qual o desafio é escolher uma palavra do dicionário em inglês, buscar um pacote no npm com aquela palavra e, se tal pacote existir, todos bebem. As chances de encontrar os pacotes são altíssimas, tamanha a quantidade de bibliotecas existente no repositório.

**Performance**
Quando comparado a outras grandes tecnologias, NodeJS nos permite escrever softwares servidores de requisições HTTP de forma muito mais eficiente. Isso se dá pelo fato de que toda leitura e escrita que ele realiza, tanto no disco quanto na rede, é feita de forma não bloqueante . Ou seja, quando o servidor recebe uma requisição e precisa, por exemplo, buscar dados no banco de dados, as demais requisições não precisam esperar que a primeira termine para que possam ser atendidas. Em outras palavras, o NodeJS realiza todas as suas operações de entrada e saída de dados de forma assíncrona, utilizando processamento concorrente (veremos mais sobre fluxo assíncrono nos próximos dias).

Por serem mais eficientes e otimizadas que outras tecnologias, as aplicações feitas em NodeJS acabam por consumir menos recursos dos servidores que as executam, tornando-o, assim, uma tecnologia, em geral, mais barata que seus concorrentes.

**Aplicações em tempo real**
A natureza não-bloqueante do NodeJS permite que alguns recursos sejam implementados na plataforma para facilitar o trabalho com operações em tempo real.

Bibliotecas como o socket.io permitem que, com poucas linhas de código, aplicações em tempo real relativamente complexas (como chats com suporte a múltiplos usuários, conversas privadas e em grupo e outros recursos) sejam criadas por completo.
(https://socket.io/)

Num mundo em que a tecnologia está cada vez mais inserida em diversas áreas, ter suporte nativo da plataforma que utilizamos para aplicações em tempo real com certeza é muito bem vindo.

**JavaScript**
Muitas das vantagens do NodeJS vêm do fato de que a linguagem executada por ele é o JavaScript.

Como já falamos antes, o JavaScript tem se mostrado uma linguagem extremamente versátil, estando presente em diversos ambientes, como a Web, Desktop, Mobile, dispositivos IoT (internet das coisas) e, até mesmo, em aparelhos televisores!

A versatilidade e baixa curva de aprendizado do JavaScript conferem ao Node um poder incrível para resolver as mais diversas situações.

**Então NodeJS é a melhor tecnologia para tudo?**
Esses são alguns dos motivos pelos quais o NodeJS é a ferramenta ideal para vários tipos de projeto. No entanto, é importante lembrar que não existe bala de prata quando o assunto é tecnologia: a melhor ferramenta sempre depende do caso de uso e dos recursos disponíveis para desempenhar uma determinada tarefa.

# Sistema de módulos
Já citamos acima que uma das grandes vantagens do NodeJS é a grande quantidade de pacotes e bibliotecas disponíveis publicamente no npm; agora chegou a hora de aprendermos o que é um pacote Node e como podemos utilizá-los no nosso código.

Pra começar, vamos entender o que é um módulo em NodeJS: um módulo é um "pedaço de código" que pode ser organizado em um ou mais arquivos, e que possui escopo próprio, ou seja: suas variáveis, funções, classes e afins só estão disponíveis nos arquivos que fazem parte daquele módulo. Em outras palavras, um módulo é uma funcionalidade ou um conjunto delas que se encontram isoladas do restante do código.

O NodeJS possui três tipos de módulos: internos, locais e de terceiros.

**Módulos internos**
Os módulos internos (ou *core modules*) são inclusos no NodeJS e instalados junto com ele quando baixamos o *runtime*. Alguns exemplos de core modules são:
Clique no nome de cada módulo para abrir a documentação oficial (em inglês).
- fs : Fornece uma API para interagir com o sistema de arquivos de forma geral;
(https://nodejs.org/api/fs.html)

- url : Provê utilitários para ler e manipular URLs;
(https://nodejs.org/api/url.html)

- querystring : Disponibiliza ferramentas para leitura e manipulação de parâmetros de URLs;
(https://nodejs.org/api/querystring.html)

- util : Oferece ferramentas e funcionalidades comumente úteis aos programadores.
(https://nodejs.org/api/util.html)

**Módulos locais**
Módulos locais são aqueles definidos juntamente à nossa aplicação. Representam funcionalidades ou partes do nosso programa que foram separados em arquivos diferentes.

Módulos locais podem ser publicados no npm para que outras pessoas possam baixá-los e utilizá-los, o que nos leva ao nosso próximo e último tipo de módulo.

**Módulos de terceiros**
Módulos de terceiros são aqueles criados por outras pessoas e disponibilizados para uso através do npm . Como dito anteriormente, nós também podemos criar e publicar nossos próprios módulos, quer seja para utilizarmos em diversas aplicações diferentes, ou para permitir que outras pessoas os utilizem. Veremos como fazer isso ainda hoje

# Importando módulos
Quando queremos utilizar um módulo ou pacote externo ao arquivo em que estamos no NodeJS, precisamos importar esse módulo / pacote para o contexto atual no qual estamos.

Existem dois padrões de módulos utilizados no back-end:
- Módulos ES6;

- Módulos CommonJS.

**ES6**
O nome ES6 vem de ECMAScript 6, que é a especificação seguida pelo JavaScript.

Na especificação do ECMAScript 6, os módulos são importados utilizando a palavra-chave import , tendo como contrapartida a palavra-chave export para exportá-los.

Exemplos:
Importando um módulo:

import meuModulo from './meuModulo';

meuModulo.fazerAlgo();

Exportando um módulo:

export function fazerAlgo () {
  console.log('fazendo');
}

export default { fazerAlgo };

Note o uso das palavras-chaves export default e o uso da palavra-chave export antes da declaração da função.
Ao primeiro caso, que utiliza apenas export , damos o nome de named export , ou seja, um export que possui um nome. Named exports nos permitem importar apenas parte do módulo, e não ele como um todo. Por exemplo:

import { fazerAlgo } from './meuModulo';

Ao segundo caso, que utiliza o `export default`, damos o nome de **default export** (hehe 😁). Ele é o que será carregado quando importarmos um módulo utilizando apenas o nome que queremos atribuir a ele, conforme visto no primeiro exemplo.

fazerAlgo();

O NodeJS não possui suporte a módulos ES6 por padrão, sendo necessário o uso de transpiladores, como o Babel, ou supersets da linguagem, como o TypeScript, para que esse recurso esteja disponível.
(https://scotch.io/tutorials/javascript-transpilers-what-they-are-why-we-need-them)
(https://babeljs.io/)
(https://www.typescriptlang.org/)

Para saber mais sobre módulos ES6, dê uma olhada nos recursos adicionais.

**CommonJS**
O CommonJS é o sistema de módulos implementado pelo NodeJS nativamente e, portanto, o sistema que utilizaremos daqui pra frente.

Para importar um módulo CommonJS, utilizamos a função require. O require procura pelo pacote informado e carrega seu conteúdo, retornando o(s) módulo(s) exportado(s) por ele. Para que isso aconteça, é necessário informarmos o nome do pacote para a função require.

Você verá, a seguir, como utilizar o require para importar cada tipo de módulo.

**Módulos internos**
Para utilizarmos um módulo interno, devemos passar o nome do pacote como parâmetro para a função require . Por exemplo, require('fs') importa o pacote responsável pelo sistema de arquivos.

Uma vez que importamos um pacote, podemos utilizá-lo no nosso código como uma variável, mais ou menos assim:

const fs = require('fs');

fs.readFileSync('./meuArquivo.txt');

Repare que o nome da variável pode ser qualquer um que escolhermos; o que importa mesmo é o nome do pacote que passamos como parâmetro para o require .

**Módulos locais**
Quando queremos importar um módulo local, precisamos passar para o require o caminho do módulo, seguindo a mesma assinatura. Por exemplo, require('./meuModulo') . Note que a extensão ( .js ) não é necessária, uma vez que o Node já procura, por padrão, por arquivos terminados em .js ou .json e os considera como módulos.

Além de importarmos um arquivo como módulo, podemos importar uma pasta. Isso é útil pois, muitas vezes, um módulo está dividido em vários arquivos, mas desejamos importar todas as suas funcionalidades de uma vez só. Nesse caso, a pasta precisa conter um arquivo chamado index.js , que importa cada um dos arquivos do módulo e os exporta da forma mais conveniente.

Por exemplo:

// meuModulo/funcionalidade-1.js

module.exports = function () {
  console.log('funcionalidade1');
}

// meuModulo/funcionalidade-2.js

module.exports = function () {
  console.log('funcionalidade2');
}

// meuModulo/index.js
const funcionalidade1 = require('./funcionalidade-1');
const funcionalidade2 = require('./funcionalidade-2');

module.exports = { funcionalidade1, funcionalidade2 };

Note como utilizamos as palavras-chaves module.exports . Como vimos anteriormente, um módulo possui um escopo isolado, ou seja, suas funções, variáveis, classes e demais definições existem somente dentro do módulo. O module.exports nos permite definir quais desses "objetos" internos ao módulo serão exportados , ou seja, serão acessíveis a arquivos que importarem aquele módulo. O module.exports pode receber qualquer valor válido em JavaScript, incluindo objetos, classes, funções e afins. No exemplo acima, isso quer dizer que, quando importarmos o módulo meuModulo , teremos um objeto contendo duas propriedades, que são as funcionalidades que exportamos dentro de meuModulo/index.js .

Para importarmos e utilizarmos o módulo meuModulo , basta passar o caminho da pasta como argumento para a função require , assim:

// minha-aplicacao/index.js

const meuModulo = require('./meuModulo');

console.log(meuModulo); // { funcionalidade1: [Function: funcionalidade1], funcionalidade2: [Function: funcionalidade2] }

meuModulo.funcionalidade1();

**Módulos de terceiros**
Módulos de terceiros são importados da mesma forma que os módulos internos: passando seu nome como parâmetro para a função require . A diferença é que, como esses módulos não são inclusos junto com o NodeJS, precisamos primeiro instalá-los na pasta do projeto em que queremos utilizá-los. O registro oficial do NodeJS, onde milhares de pacotes estão disponíveis para serem instalados é o npm . Além disso, npm também é o nome da ferramenta de linha de comando (CLI - command line interface ) responsável por baixar e instalar esses pacotes. O CLI npm é instalado juntamente com o NodeJS.

Quando importamos um módulo que não é nativo do NodeJS em um arquivo local, o Node inicia uma busca por esse módulo. Essa busca acontece na pasta node_modules . Caso um módulo não seja encontrado na node_modules mais próxima do arquivo que o chamou, o Node procurará por uma pasta node_modules na pasta que contém a pasta atual. Caso encontrado, o módulo é carregado. Do contrário, o processo é repetido em um nível de pasta acima. Isso acontece até que o módulo seja encontrado, ou até que uma pasta node_modules não exista no local em que o Node está procurando.

# NPM
O npm (sigla para Node Package Manager ) é, como dito no tópico anterior, o repositório oficial para publicação de pacotes NodeJS. É para ele que realizamos upload dos arquivos de nosso pacote quando queremos disponibilizá-lo para uso de outras pessoas ou em diversos projetos. Atualmente, uma média de 659 pacotes são publicados no npm todos os dias, segundo o site ModuleCounts.

Um pacote é um conjunto de arquivos que exportam um ou mais módulos Node. Nem todo pacote Node é uma biblioteca, visto que uma API desenvolvida em Node também tem um pacote.

Você entenderá mais sobre o que compõe um pacote mais à frente.

**Utilizando o CLI do npm**
O CLI do npm é uma ferramenta oficial que nos auxilia no gerenciamento de pacotes, sejam esses pacotes dependências da nossa aplicação ou nossos próprios pacotes. É através dele que criamos um projeto, instalamos e removemos pacotes, publicamos e gerenciamos versões dos nossos próprios pacotes. Publicar um pacote público no npm é gratuito e não há um limite de pacotes que se pode publicar. Existem, no entanto, taxas de assinaturas, caso desejemos hospedar pacotes de forma privada, ou seja, pacotes sob os quais só nós temos o controle de acesso.

Para entender melhor o npm e seu uso na prática, assista ao vídeo a seguir:

- Vídeo Trybe
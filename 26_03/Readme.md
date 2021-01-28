# Exercise
Dica: para os exercícios abaixo, use arquivos maiores que 10mb, ou a leitura será realizada em menos de 1 milissegundo, o que tira toda a graça. 😄

**Exercício 1 :** Utilizando apenas funções síncronas, crie um script que leia dois arquivos e:
  1. Escreva, no terminal, para cada arquivo, qual foi o tempo necessário para lê-lo do disco;

  2. Escreva, no terminal, para cada arquivo, seu tamanho em bytes;

  3. Escreva, no terminal, ao final do processo, qual o tempo total necessário para a execução completa do script.

Dica: utilize a função readFileSync do módulo fs do Node.js.

**Exercício 2 :** Crie um script que realize as mesmas funcionalidades que o script do exercício 1, mas utilizando apenas funções assíncronas, de forma que os dois arquivos sejam lidos ao mesmo tempo.

Dica: utilize a função readFile do módulo fs do Node.js.

**Exercício 3 :** Crie um script NodeJS que, utilizando apenas funções síncronas e módulos padrão do NodeJS, receba o nome de uma pasta e:
  1. Escreva a quantidade de arquivos existentes dentro dela;

  2. Escreva a soma do tamanho de todos os arquivos presentes nela;

  3. Escreva no terminal o tempo total de execução do script.

Dica: utilize a função readdirSync do módulo fs do Node.js.

**Exercício 4 :** Recrie o script do exercício 3 utilizando apenas funções assíncronas.

Dica: utilize a função readdir do módulo fs do Node.js.
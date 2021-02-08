const fs = require('fs');
const util = require('util');
const path = require('path');
const readline = require('readline');

const readFile = util.promisify(fs.readFile);

function question(message) {
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
  });
  return new Promise((resolve) => {
    rl.question(message, (answer) => {
      rl.close();
      resolve(answer);
    });
  });
}

question('Digite o caminho do arquivo que deseja ler: ')
  .then((answer) => readFile(path.resolve(__dirname, answer)))
  .then((file) => {
    console.log(file.toString('utf8'));
    console.log('---------------------');
    console.log(`Arquivo de ${file.byteLength} bytes, lido em ${scriptEnd} ms`);
  })
  .catch(err => console.log(`Erro ao ler arquivo: ${err.message}`));

  const fs = require('fs');
const util = require('util');
const path = require('path');
const readline = require('readline');

const readFile = util.promisify(fs.readFile);

function question(message) {
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
  });
  return new Promise((resolve) => {
    rl.question(message, (answer) => {
      rl.close();
      resolve(answer);
    });
  });
}

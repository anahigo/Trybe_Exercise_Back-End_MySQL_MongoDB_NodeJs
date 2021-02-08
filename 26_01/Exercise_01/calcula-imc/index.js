const readline = require('readline-sync');

const calculaIMC = () => {
  const peso = readline.question('Digite seu peso (kg): ');
  const altura = readline.question('Digite sua altura (m): ');

  const imc = (peso / Math.pow(altura, 2));

  return console.log(`Seu IMC é: ${imc}`);
}

calculaIMC();
const inquirer = require('inquirer');

const validateFloat = input => !isNaN(parseFloat(input)) || 'Por favor, digite um número válido';

const calculaIMC = async () => {
  const answers = await inquirer.prompt([
    { name: 'peso', type: 'input', message: 'Qual o seu peso (kg)?', validate: validateFloat },
    { name: 'altura', type: 'input', message: 'Qual a sua altura (m)?', validate: validateFloat }
  ])

  const peso = parseFloat(answers.peso);
  const altura = parseFloat(answers.altura);

  console.log(`Peso: ${peso}, altura: ${altura}`);

  const imc = (peso / Math.pow(altura, 2)).toFixed(2);

  console.log(`IMC: ${imc}`);

  if (imc < 18.5) {
    return console.log('Situação: Abaixo do peso (magreza)');
  } else if (imc >= 18.5 && imc < 25) {
    return console.log('Situação: Peso normal');
  } else  if (imc >= 25 && imc < 30) {
    return console.log('Situação: Acima do peso (sobrepeso)');
  } else if (imc >= 30 && imc < 35) {
    return console.log('Situação: Obesidade grau I');
  } else if (imc >= 35 && imc < 40) {
    return console.log('Situação: Obesidade grau II');
  } else {
    return console.log('Situação: Obesidade graus III e IV');
  }
}

calculaIMC();
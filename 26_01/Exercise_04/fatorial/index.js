const inquirer = require('inquirer');

const isInteger = number => parseInt(number) === parseFloat(number);

const validateX = value => {
  if (value < 0) return 'Informe um número maior ou igual a 0';
  if (Number.isNaN(value) || !isInteger(value)) return 'Informe um número inteiro';
  return true;
}

const performsFactoring = x => [0, 1].includes(x) ? 1 : x * performsFactoring(x - 1);

const performsCalculation = async () => {
  const answers = await inquirer.prompt([{
    type: 'input',
    validate: validateX,
    name: 'x',
    message: 'Informe o valor de x:'
  }]);

  const x = parseInt(answers.x, 10);

  console.log(`x: ${x}`);

  const result = performsFactoring(x);

  console.log(`Resultado: ${result}`);
}

performsCalculation();
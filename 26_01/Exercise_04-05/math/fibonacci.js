const fibonacci = require('./mathmagic');
const inquirer = require('inquirer');

const isInteger = number => parseInt(number) === parseFloat(number);

const validate = value => {
  if (value < 0) return 'Informe um número maior ou igual a 0';
  if (Number.isNaN(value) || !isInteger(value)) return 'Informe um número inteiro';
  return true;
}

inquirer
  .prompt([
    { name: "number", type: "input", message: "Qual o valor do fibonacci? ", validate},
  ])
  .then((answers) => fibonacci.calculateFibonacci(answers.number))
  .catch((error)=> console.error(error.message));
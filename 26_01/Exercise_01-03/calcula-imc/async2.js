const imc = require('./imc')
const inquirer = require('inquirer');

const validate = (number) => isNaN(number) ? "Digite um valor válido" : true;

inquirer
  .prompt([
    { name: 'weight', type: 'input', message: 'Qual é seu peso (kg)?', validate },
    { name: 'height', type: 'input', message: 'Qual é sua altura (m)?', validate },
  ])
  .then((answers) => {
    const { weight, height } = answers;
    console.log("IMC: ", imc.calculate(weight, height).toFixed(2));
    console.log("Classificação: ", imc.classification(imc.calculate(weight, height)));
  })
  .catch((error) => {
    console.error(error.message);
  })

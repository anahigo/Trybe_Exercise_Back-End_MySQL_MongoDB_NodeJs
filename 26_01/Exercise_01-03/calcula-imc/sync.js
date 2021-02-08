const imc = require('./imc')
const readline = require('readline-sync');

function readDataIMC() {
  try {
    const weight = readline.questionFloat('Qual é seu peso (kg)?');
    const height = readline.questionFloat('Qual é sua altura (m)?')
    console.log("IMC: ", imc.calculate(weight, height).toFixed(2))
    console.log("Classificação: ", imc.classification(imc.calculate(weight, height)))
  } catch(error) {
    console.error(error.message)
  }
}

readDataIMC();
const inquirer = require('inquirer');

const isInteger = number => parseInt(number) === parseFloat(number);

const validateN = value => {
  if (value < 0) return 'Informe um número maior ou igual a 0';
  if (Number.isNaN(value) || !isInteger(value)) return 'Informe um número inteiro';
  return true;
}

const calculateElement = n => {
  let a = 1;
  let b = 1;

  for (; n >= 0; n--) {
    if (b) console.log(b);
    const temp = a;
    a = a + b;
    b = temp;
  }

  console.log(b);
  return b;
}

const performsCalculation = async () => {
  const answers = await inquirer.prompt([{
    type: 'input',
    validate: validateN,
    name: 'n',
    message: 'Informe o valor de n:'
  }]);

  const n = parseInt(answers.n, 10);

  console.log('n: %s', n);

  calculateElement(n - 2);
}

performsCalculation();
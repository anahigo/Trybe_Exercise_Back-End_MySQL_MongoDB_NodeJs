const readline = require('readline-sync');

const calculaIMC = () => {
  const peso = readline.question('Digite seu peso (kg): ');
  const altura = readline.question('Digite sua altura (m): ');

  const imc = (peso / Math.pow(altura, 2)).toFixed(2);

  if (imc < 18.5) {
    return console.log(`Seu IMC é ${imc} e está abaixo do peso (magreza)`);
  } else if (imc >= 18.5 && imc < 25) {
    return console.log(`Seu IMC é ${imc} e está com peso normal`);
  } else  if (imc >= 25 && imc < 30) {
    return console.log(`Seu IMC é ${imc} e está acima do peso (sobrepeso)`);
  } else if (imc >= 30 && imc < 35) {
    return console.log(`Seu IMC é ${imc} e está com obesidade grau I`);
  } else if (imc >= 35 && imc < 40) {
    return console.log(`Seu IMC é ${imc} e está com obesidade grau II`);
  } else {
    return console.log(`Seu IMC é ${imc} e está com obesidade grau III e IV`);
  }
}

calculaIMC();
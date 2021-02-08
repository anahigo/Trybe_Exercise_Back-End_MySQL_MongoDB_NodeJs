const calculate = (weight, height) => {
  if(isNaN(weight) || isNaN(height)) {
    throw new Error('Valores inválidos para cálculo IMC')
  }
  return parseFloat(weight) / Math.pow(parseFloat(height), 2).toFixed(2);
}

const classification = imc => {
  if(isNaN(imc)) {
    throw new Error('Valor inválidos para a classificação')
  }

  const imcFloat = parseFloat(imc);

  if (imcFloat < 18.5) {
    return 'Abaixo do peso (magreza)';
  } else if (imcFloat >= 18.5 && imcFloat < 25) {
    return 'Peso normal';
  } else  if (imcFloat >= 25 && imcFloat < 30) {
    return 'Acima do peso (sobrepeso)';
  } else if (imcFloat >= 30 && imcFloat < 35) {
    return 'Obesidade grau I';
  } else if (imc >= 35 && imc < 40) {
    return 'Obesidade grau II';
  } else {
    return 'Obesidade grau III e IV';
  }
}

module.exports = { 
  calculate,
  classification
}
const calculateFactorial = number => number !== 1 ? number * calculateFactorial(number - 1) : number;

const calculateFibonacci = number => {
  let a = 1;
  let b = 1;

  for (; number > 0; number--){
    console.log(b);
    const temp = a;
    a = a + b;
    b = temp;
  }

  return b;
}

module.exports = { 
  calculateFactorial,
  calculateFibonacci 
}
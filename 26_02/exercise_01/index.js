// Funções assincronas são, no js, "promeses"
// Promeses podem ser resolvidas ou rejeitadas

const mathFunction = (x, y, z) => {
  return new Promise((resolve, reject) => {
    if(typeof x !== 'number' || typeof y !== 'number' || typeof z !== 'number') {
      return reject(new Error('Digite apenas números'));
    }
    resolve(x + y);
  })
  .then((sum) => {
    const mul = sum * z;
    return (mul < 50) ? Promise.reject(new Error('Valor muito baixo')) : mul;
  })
  .catch((error) => console.error(error.message));
}

mathFunction(10,15,20).then(result => console.log(result));


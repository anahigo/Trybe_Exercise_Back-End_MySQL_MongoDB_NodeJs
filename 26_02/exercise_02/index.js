const mathFunction = async (x, y, z) => {
  if (typeof x !== 'number' || typeof y !== 'number' || typeof z !== 'number') {
    return Promise.reject(new Error('Digite apenas números'));
  }
  const sum = x + y;
  const mul = sum * z;
  return mul < 50 ? Promise.reject(new Error('Valor muito baixo')) : mul;
};

mathFunction(10,15,20).then(result => console.log(result));
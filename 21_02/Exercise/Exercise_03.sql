-- Exercise 3:
-- Exercise 3.1: Selecione todos os dados dos produtos, incluindo todos os dados do fabricante de cada produto.

SELECT a.*, b.name 
FROM products AS a, Manufacturers AS b
WHERE a.manufacturer = b.code;

-- Exercise 3.2: Selecione o nome do produto, preço e nome do fabricante de todos os produtos.

SELECT a.name, a.price, b.name 
FROM products AS a, Manufacturers AS b 
WHERE a.manufacturer = b.code;

-- Exercise 3.3: Selecione o preço médio dos produtos de cada fabricante, mostrando apenas o código do fabricante.

SELECT AVG(price), manufacturer
FROM products
GROUP BY manufacturer;

-- Exercise 3.4: Selecione o preço médio dos produtos de cada fabricante, mostrando o nome do fabricante.

SELECT AVG(a.price), b.name 
FROM products AS a, manufacturers AS b 
WHERE a.manufacturer = b.code
GROUP BY b.name;

-- Exercise 3.5: Selecione os nomes dos fabricantes cujos produtos têm um preço médio maior ou igual a $ 150.

SELECT AVG(a.price), b.name 
FROM manufacturers AS b, products AS a 
WHERE b.code = a.manufacturer
GROUP BY b.name
HAVING AVG(a.price)>=150;
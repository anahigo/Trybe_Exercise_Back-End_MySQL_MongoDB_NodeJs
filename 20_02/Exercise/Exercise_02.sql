-- Exercício 1 : 
-- Selecione todos os registros da tabela Customers, classifique o resultado em ordem alfabética pela coluna City.

-- SELECT * FROM Customers
-- _____ ___;

SELECT * FROM Customers
ORDER BY City;

-- Exercício 2 : 
-- Selecione todos os registros da tabela Customers, classifique o resultado invertido em ordem alfabética pela coluna City.

-- SELECT * FROM Customers
-- _____ ___ ____;

SELECT * FROM Customers
ORDER BY City DESC;


-- Exercício 3 : 
-- Selecione todos os registros da tabela Customers, classifique o resultado em ordem alfabética, primeiro pela coluna e Country, a seguir, pela coluna City.

-- SELECT * FROM Customers
-- _____ ___ ____;

SELECT * FROM Customers
ORDER BY Country, City;


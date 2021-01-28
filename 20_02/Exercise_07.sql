-- Exercício 1 : 
-- Selecione todos os registros cuja coluna City tenha o valor "Berlim". 

-- SELECT * FROM Customers
-- _____ ___ = _____;

SELECT * FROM Customers
WHERE City = 'Berlin';

-- Exercício 2 : 
-- Use a palavra-chave NOT para selecionar todos os registros onde City NÃO seja "Berlin".

-- SELECT * FROM Customers
-- ________ = '_____';

SELECT * FROM Customers
WHERE NOT City = 'Berlin';

-- Exercício 3 : 
-- Selecione todos os registros em que a coluna CustomerID tenha o valor 32.

-- SELECT * FROM Customers
-- ________ CustomerID __ __;

SELECT * FROM Customers
WHERE CustomerID = 32;

-- Exercício 4 : 
-- Selecione todos os registros em que a coluna City tenha o valor 'Berlim' e a coluna PostalCode tenha o valor 12209.

-- _____ * FROM Customers
-- _____ City = 'Berlin'
-- __ _____ = 12209;

SELECT * FROM Customers
WHERE City = 'Berlin'
AND PostalCode = 12209;

-- Exercício 5 : 
-- Selecione todos os registros em que a coluna City tenha o valor 'Berlim' ou 'Londres'.

-- _____ * FROM Customers
-- _____ City = 'Berlin'
-- __ _____ = '____';

SELECT * FROM Customers
WHERE City = 'Berlin'
OR City = 'London';


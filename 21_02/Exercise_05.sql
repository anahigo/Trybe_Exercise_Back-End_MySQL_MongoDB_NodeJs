-- Exercise 5:
--Exercise 5.1: Selecione o código de cada caixa, juntamente com o nome da cidade em que a caixa está localizada.
SELECT B.code, W.location
FROM boxes AS B, warehouses AS W
WHERE B.warehouse = W.Code;

--Exercise 5.2: Selecione os códigos de depósito, junto com o número de caixas em cada depósito.
  -- Opcionalmente, leve em consideração que alguns depósitos estão vazios (ou seja, a contagem de caixas deve aparecer como zero, em vez de omitir o depósito do resultado).

SELECT warehouse, count(*) 
FROM boxes 
GROUP BY warehouse;

--Exercise 5.3:  Selecione os códigos de todos os depósitos que estão saturados (um depósito está saturado se o número de caixas nele for maior que a capacidade do depósito).

SELECT code
FROM warehouses AS W
WHERE capacity <
  (
    SELECT COUNT(*)
      FROM Boxes AS B
      WHERE b.warehouse = w.code
);

--Exercise 5.4:  Selecione os códigos de todas as caixas localizadas em Chicago.

SELECT B.Code
FROM warehouses AS W
LEFT JOIN boxes AS B
ON W.Code = B.Warehouse
WHERE Location = 'Chicago';
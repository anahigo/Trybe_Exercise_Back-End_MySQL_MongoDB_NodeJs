-- Exercise 2:
-- Exercise 2.1: Encontre a lista de todos os edifícios que possuem funcionários
SELECT DISTINCT building FROM employees;

-- Exercise 2.2: Encontre a lista de todos os edifícios e suas capacidades
SELECT * FROM buildings;

-- Exercise 2.3: Liste todos os edifícios e as funções distintas dos funcionários em cada edifício (incluindo edifícios vazios)
SELECT DISTINCT B.building_name, E.role 
FROM buildings AS B
  LEFT JOIN employees AS E
    ON B.building_name = E.building;
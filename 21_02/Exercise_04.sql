-- Exercise 4:
-- Exercise 4.1: Selecione todos os dados dos funcionários, incluindo os dados de cada departamento do funcionário.

SELECT E.*, D.*
FROM employees AS E, departments AS D
WHERE E.Department = D.Code;

-- Exercise 4.2: Selecione o nome e o sobrenome de cada funcionário, juntamente com o nome e o orçamento do departamento do funcionário.

SELECT A.name, A.lastname, B.department_name, B.budget
FROM employees AS A, departments AS B
WHERE A.department = B.code;

-- Exercise 4.3: Selecione o nome e o sobrenome dos funcionários que trabalham em departamentos com um orçamento superior a $ 60.000.

SELECT name, lastname
FROM employees
WHERE department in (
  SELECT code 
  FROM departments 
  WHERE budget > 60000
);

-- Exercise 4.5: Selecione os nomes dos departamentos com mais de dois funcionários.
SELECT B.name 
FROM departments AS B
WHERE code in (
  SELECT department
  FROM employees
  GROUP BY department
  HAVING COUNT(*) > 2
);

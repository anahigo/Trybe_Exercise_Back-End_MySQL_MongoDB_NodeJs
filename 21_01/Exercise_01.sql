/*
Exercise 1:
Exercise 1.1:
Descubra o tempo mais longo que um funcionário está no estúdio
*/

SELECT MAX(years_employed) as Max_years_employed
FROM employees;

/*
Exercise 1.2:
Para cada função, encontre o número médio de anos empregados por funcionários nessa função
*/

SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY role;

/*
Exercise 1.3:
Encontre o número total de anos de funcionários trabalhados em cada edifício
*/

SELECT building, SUM(years_employed) as Total_years_employed
FROM employees
GROUP BY building;
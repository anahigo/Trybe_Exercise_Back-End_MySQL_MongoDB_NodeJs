/*
Exercise 2:
Exercise 2.1:
Encontre o número de artistas no estúdio (sem uma cláusula HAVING )
*/

SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role = "Artist";

/*
Exercise 2.2:
Encontre o número de funcionários de cada função no estúdio
*/

SELECT role, COUNT(*)
FROM employees
GROUP BY role;

/*
Exercise 2.3:
Encontre o número total de anos empregados por todos os engenheiros
*/

SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";
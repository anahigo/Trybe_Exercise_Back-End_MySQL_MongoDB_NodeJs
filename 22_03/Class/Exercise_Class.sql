-- Dê um pause aqui na lição e clone alguma tabela do banco de dados sakila para ver na prática o resultado do comando acima.

USE normalization;
CREATE TABLE funcionarios2 LIKE normalization.funcionarios;

-- Treinando view
USE hr;
CREATE VIEW exercise AS
	SELECT CONCAT(Ea.FIRST_NAME, ' ', Ea.LAST_NAME) AS `Nome completo funcionário 1`,
	Ea.SALARY AS `Salário funcionário 1`,
	Ea.PHONE_NUMBER AS `Telefone funcionário 1`,
	CONCAT(Eb.FIRST_NAME, ' ', Eb.LAST_NAME) AS `Nome completo funcionário 2`,
	Eb.SALARY AS `Salário funcionário 2`,
	Eb.PHONE_NUMBER AS `Telefone funcionário 2`
	FROM employees AS Ea, employees AS Eb
	WHERE Ea.JOB_ID = Eb.JOB_ID
	AND Ea.EMPLOYEE_ID <> Eb.EMPLOYEE_ID
	ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;

SELECT * FROM exercise;
DROP VIEW exercise;
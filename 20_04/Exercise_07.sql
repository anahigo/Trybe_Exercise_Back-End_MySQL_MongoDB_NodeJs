/*
Exercise 7:
Exercise 7.1:
Escreva uma instrução SQL para alterar a coluna de e-mail da tabela de funcionários com 'não disponível' para todos os funcionários.
*/

UPDATE employees SET email='not available';

/*
Exercise 7.2:
Escreva uma instrução SQL para alterar a coluna email e Commission_pct da tabela de funcionários com 'não disponível' e 0,10 para todos os funcionários.
*/

UPDATE employees SET email='not available',
commission_pct=0.10;

/*
Exercise 7.3:
Escreva uma instrução SQL para alterar a coluna email e Commission_pct da tabela de funcionários com 'não disponível' e 0,10 para os funcionários cujo departamento_id é 110.
*/

UPDATE employees 
SET email='not available',
commission_pct=0.10 
WHERE department_id=110;

/*
Exercise 7.4:
Escreva uma instrução SQL para alterar a coluna de e-mail da tabela de funcionários com 'não disponível' para aqueles funcionários cujo departamento_id é 80 e recebe uma comissão é inferior a 0,20%
*/

UPDATE employees 
SET email='not available'
WHERE department_id=80 AND commission_pct<.20;

/*
Exercise 7.5:
Escreva uma instrução SQL para alterar a coluna de e-mail da tabela de funcionários com 'não disponível' para os funcionários que pertencem ao departamento de 'Contabilidade'.
*/

UPDATE employees 
SET email='not available'
WHERE department_id=(
SELECT department_id 
FROM departments 
WHERE department_name='Accounting');

/*
Exercise 7.6:
Escreva uma instrução SQL para alterar o salário do funcionário para 8000 cujo ID é 105, se o salário existente for inferior a 5000.
*/

UPDATE employees SET SALARY = 8000 WHERE employee_id = 105 AND salary < 5000;

/*
Exercise 7.7:
Escreva uma instrução SQL para alterar o ID do cargo do funcionário cujo ID é 118 para SH_CLERK se o funcionário pertencer ao departamento, cujo ID é 30 e o ID do trabalho existente não começa com SH.
*/

UPDATE employees SET JOB_ID= 'SH_CLERK' 
WHERE employee_id=118 
AND department_id=30 
AND NOT JOB_ID LIKE 'SH%';

/*
Exercise 7.8:
Escreva uma instrução SQL para aumentar o salário dos funcionários do departamento 40, 90 e 110 de acordo com as regras da empresa que, o salário será aumentado em 25% para o departamento 40, 15% para o departamento 90 e 10% para o departamento 110 e os demais departamentos permanecerão os mesmos.
*/

UPDATE employees SET salary= CASE department_id 
                          WHEN 40 THEN salary+(salary*.25) 
                          WHEN 90 THEN salary+(salary*.15)
                          WHEN 110 THEN salary+(salary*.10)
                          ELSE salary
                        END
             WHERE department_id IN (40,50,50,60,70,80,90,110);


/*
Exercise 7.9:
Escreva uma instrução SQL para aumentar o salário mínimo e máximo de PU_CLERK até 2000, bem como o salário desses funcionários em 20% e o percentual de comissão em 0,10.
*/

UPDATE jobs,employees
SET jobs.min_salary=jobs.min_salary+2000,
jobs.max_salary=jobs.max_salary+2000,
employees.salary=employees.salary+(employees.salary*.20),
employees.commission_pct=employees.commission_pct+.10
WHERE jobs.job_id='PU_CLERK'
AND employees.job_id='PU_CLERK';
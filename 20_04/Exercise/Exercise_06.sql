/*
Exercise 6:
Exercise 6.1:
Escreva uma instrução SQL para inserir um registro com seu próprio valor nos países da tabela em cada coluna.
*/

SELECT * FROM HR.countries;
INSERT INTO HR.countries 
	VALUES('C1','India',1001);
SELECT * FROM HR.countries;

/*
Exercise 6.2:
Escreva uma instrução SQL para inserir uma linha na tabela países contra a coluna country_id e country_name.
*/

SELECT * FROM HR.countries;
INSERT INTO HR.countries 
    (country_id,country_name)
VALUES
    ('C2','BRASIL');
SELECT * FROM HR.countries;

/*
Exercise 6.4:
Escreva uma instrução SQL para inserir valores NULL na coluna region_id para uma linha da tabela de países.
*/

SELECT * FROM HR.countries;
INSERT INTO HR.countries 
    (country_id,country_name,region_id)
VALUES
    ('C3','CHILE', NULL);
SELECT * FROM HR.countries;

/*
Exercise 6.5:
Escreva uma instrução SQL para inserir 3 linhas por uma única instrução de inserção.
*/

SELECT * FROM HR.countries;
INSERT INTO HR.countries 
    (country_id,country_name,region_id)
VALUES
    ('C4','ABC', NULL),
    ('C5','DEF', NULL),
    ('C6','GHI', NULL);
SELECT * FROM HR.countries;

/*
Exercise 6.6:
Escreva uma instrução SQL para inserir linhas da tabela country_new na tabela de países.
*/

INSERT INTO countries
SELECT * FROM country_new;

/*
Exercise 6.7:
Escreva uma instrução SQL para inserir uma linha na tabela de jobs para garantir que nenhum valor duplicado seja inserido na coluna job_id.
*/

INSERT INTO jobs VALUES(1001,'OFFICER',8000);

/*
Exercise 6.8:
Escreva uma instrução SQL para inserir uma linha na tabela de trabalhos para garantir que nenhum valor duplicado seja inserido na coluna job_id.
*/

INSERT INTO jobs VALUES(1001,'OFFICER',8000);

/*
Exercise 6.9:
Escreva uma instrução SQL para inserir um registro na tabela países para garantir que uma combinação country_id e region_id seja inserida uma vez na tabela.
*/

INSERT INTO countries VALUES(501,'Italy',185);

/*
Exercise 6.10:
Escreva uma instrução SQL para inserir linhas na tabela de países em que o valor da coluna country_id será exclusivo e incrementado automaticamente.
*/

INSERT INTO countries(COUNTRY_NAME,REGION_ID) VALUES('India',185);

/*
Exercise 6.11:
Escreva uma instrução SQL para inserir registros na tabela de países para garantir que a coluna country_id não contenha dados duplicados e isso será automaticamente incrementado e a coluna country_name será preenchida por 'N / A' se nenhum valor atribuído para essa coluna.
*/

INSERT INTO countries VALUES(501,'India',102);

/*
Exercise 6.12:
Escreva uma instrução SQL para inserir linhas na tabela job_history na qual uma coluna job_id contém os valores que existem na coluna job_id da tabela de jobs.
*/

INSERT INTO job_history VALUES(501,1001,60);

/*
Exercise 6.13:
Escreva uma instrução SQL para inserir linhas na tabela workers em que um conjunto de colunas department_id e manager_id contém um valor único e esses valores combinados devem existir nos departamentos da tabela.
*/

INSERT INTO employees VALUES(510,'Alex','Hanes','CLERK',18000,201,60);
INSERT INTO employees VALUES(511,'Kim','Leon','CLERK',18000,211,80);

/*
Exercise 6.14:
Escreva uma instrução SQL para inserir linhas na tabela workers em que um conjunto de colunas department_id e job_id contém os valores que devem existir nos departamentos e jobs da tabela.
*/

INSERT INTO employees VALUES(510,'Alex','Hanes',60,1001,18000);
-- Exercício 1 : Exibe o primeiro nome de todos e suas idades para todos que estão na mesa.
SELECT first, age FROM empinfo; 

-- Exercício 2 : Exibe o nome, o sobrenome e a cidade de todas as pessoas que não são de Payson.

SELECT first, last, city FROM empinfo
where city <> 'Payson';

-- Exercício 3 : Exibir todas as colunas para todos com mais de 40 anos.
SELECT * FROM empinfo
WHERE age > 40;

-- Exercício 4 : Exibe o nome e o sobrenome de todas as pessoas cujo sobrenome termina com "ay".
SELECT first, last, FROM empinfo
WHERE last LIKE '%ay';

-- Exercício 5 : Exibir todas as colunas para todos cujo primeiro nome é igual a "Maria".
SELECT * FROM empinfo
WHERE first = 'Mary';

-- Exercício 6 : Exibir todas as colunas para todos cujo nome contém "Maria".
SELECT * FROM empinfo
WHERE first LIKE '%Mary%';

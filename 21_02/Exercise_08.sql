-- Exercise 8:
-- Exercise 8.1: Use JOIN para exibir o nome e o sobrenome, bem como o endereço, de cada membro da equipe. Use as tabelas pessoal e endereço:

SELECT stf.first_name, stf.last_name, adr.address, adr.district, adr.postal_code, adr.city_id 
FROM staff AS stf
LEFT JOIN address AS adr
ON stf.address_id = adr.address_id;

-- Exercise 8.2: Use JOIN para exibir o valor total escalado (soma) por cada membro da equipe em agosto de 2005. Use as tabelas equipe e pagamento.
SELECT stf.first_name, stf.last_name, sum(pay.amount)
FROM staff AS stf
LEFT JOIN payment AS pay
ON stf.staff_id = pay.staff_id
WHERE month(pay.payment_date) = 8
AND year(pay.payment_date)  = 2005
GROUP BY stf.first_name, stf.last_name;
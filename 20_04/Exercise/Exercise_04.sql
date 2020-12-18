/* 
Exercise 4:
Os donos do restaurante reclamam que o item com id 2 vende mal. Isso pode ser porque Spring Scrolls realmente não soa como algo particularmente comestível.

Corrija o nome e altere-o para Rolinhos Primavera .
*/

UPDATE dish
SET name = 'Spring Rolls'
WHERE id = 2;
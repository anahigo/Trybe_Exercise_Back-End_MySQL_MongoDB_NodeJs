/* Exercício 1:
Escreva uma query SQL para alterar o nome da coluna street_address para address , mantendo o mesmo tipo e tamanho de dados.
*/

ALTER TABLE hr.locations CHANGE STREET_ADDRESS ADRESS VARCHAR(40);
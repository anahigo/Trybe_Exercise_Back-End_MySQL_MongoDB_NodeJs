CREATE DATABASE `Escolas`;
CREATE TABLE IF NOT EXISTS Escolas.Alunos (
    `Nome` VARCHAR(7) CHARACTER SET utf8,
    `Idade` INT
);
INSERT INTO Escolas.Alunos VALUES
    ('Rafael', 25),
    ('Amanda', 30),
    ('Roberto', 45),
    ('Carol', 19),
    ('Amanda', 25);

SELECT * FROM Escolas.Alunos;
SELECT DISTINCT Nome, Idade FROM Escolas.Alunos;
SELECT DISTINCT Nome FROM Escolas.Alunos;
SELECT DISTINCT Idade FROM Escolas.Alunos;
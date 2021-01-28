CREATE DATABASE IF NOT EXISTS zoo;

USE zoo;
CREATE TABLE gerente(
gerente_id INT PRIMARY KEY auto_increment,
nome VARCHAR(50) NOT NULL
)engine=InnoDB;

CREATE TABLE cuidador(
cuidador_id INT PRIMARY KEY auto_increment,
nome VARCHAR(50) NOT NULL,
gerente_id INT NOT NULL,
FOREIGN KEY (gerente_id) references gerente(gerente_id)
)engine=InnoDB;

CREATE TABLE animal(
animal_id INT PRIMARY KEY auto_increment,
nome VARCHAR(25) NOT NULL,
especie VARCHAR(50) NOT NULL,
sexo VARCHAR(1) NOT NULL,
idade INT NOT NULL,
localizacao VARCHAR(100) NOT NULL,
cuidador_id INT NOT NULL, 
FOREIGN KEY (cuidador_id) references cuidador(cuidador_id)
)engine=InnoDB;

SELECT * FROM zoo.gerente;
SELECT * FROM zoo.cuidador;
SELECT * FROM zoo.animal;
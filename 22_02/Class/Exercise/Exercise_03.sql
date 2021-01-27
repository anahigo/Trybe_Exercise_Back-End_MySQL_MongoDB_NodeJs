-- Criação do Banco de Dados
CREATE DATABASE IF NOT EXISTS normalization;

-- Criação das tabelas
USE normalization;
CREATE TABLE funcionarios(
funcionario_id INT PRIMARY KEY auto_increment,
nome VARCHAR(50) NOT NULL,
sobrenome VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
telefone VARCHAR(50) NOT NULL,
DataCadastro DATETIME NOT NULL
)engine=InnoDB;

CREATE TABLE setores(
setor_id INT PRIMARY KEY auto_increment,
setor VARCHAR(50) NOT NULL
)engine=InnoDB;

CREATE TABLE funcionarios_setores(
funcionario_id INT NOT NULL,
setor_id INT NOT NULL,
FOREIGN KEY (funcionario_id) references funcionarios(funcionario_id),
FOREIGN KEY (setor_id) references setores(setor_id)
)engine=InnoDB;

-- Inserindo dados na tabela
INSERT INTO funcionarios(funcionario_id, nome, sobrenome, email, telefone, DataCadastro) 
VALUES(12, 'Joseph', 'Rodrigues', 'jo@gmail.com', '(35)998552-1445', '2020-05-05 08:50:25');
INSERT INTO funcionarios(funcionario_id, nome, sobrenome, email, telefone, DataCadastro) 
VALUES(13, 'André', 'Freeman', 'andre1990@gmail.com', '(47)99522-4996', '2020-02-05 00:00:00');
INSERT INTO funcionarios(funcionario_id, nome, sobrenome, email, telefone, DataCadastro) 
VALUES(14, 'Cíntia', 'Duval', 'cindy@outlook.com', '(33)99855-4669', '2020-05-05 10:55:35');
INSERT INTO funcionarios(funcionario_id, nome, sobrenome, email, telefone, DataCadastro) 
VALUES(15, 'Fernanda', 'Mendes', 'fernandamendes@yahoo.com', '(33)99200-1556', '2020-05-05 11:45:40');

INSERT INTO setores(setor_id, setor) VALUES(1, 'Administração');
INSERT INTO setores(setor_id, setor) VALUES (2, 'Vendas');
INSERT INTO setores(setor_id, setor) VALUES(3, 'Operacional');
INSERT INTO setores(setor_id, setor) VALUES(4, 'Estratégico');
INSERT INTO setores(setor_id, setor) VALUES(5, 'Marketing');

INSERT INTO funcionarios_setores(funcionario_id, setor_id) VALUES(12, 1);
INSERT INTO funcionarios_setores(funcionario_id, setor_id) VALUES(12, 2);
INSERT INTO funcionarios_setores(funcionario_id, setor_id) VALUES(13, 3);
INSERT INTO funcionarios_setores(funcionario_id, setor_id) VALUES(14, 4);
INSERT INTO funcionarios_setores(funcionario_id, setor_id) VALUES(14, 2);
INSERT INTO funcionarios_setores(funcionario_id, setor_id) VALUES(15, 5);

SELECT * FROM normalization.funcionarios;
SELECT * FROM normalization.setores;
SELECT * FROM normalization.funcionarios_setores;
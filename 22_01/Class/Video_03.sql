CREATE DATABASE IF NOT EXISTS albuns;

USE albuns;
CREATE TABLE artista(
artista_id INT PRIMARY KEY auto_increment,
nome VARCHAR(50) NOT NULL
)engine=InnoDB;

CREATE TABLE estilomusical(
estilo_id INT PRIMARY KEY auto_increment,
nome VARCHAR(50) NOT NULL
)engine=InnoDB;

CREATE TABLE album(
album_id INT PRIMARY KEY auto_increment,
artist_id INT NOT NULL,
titulo VARCHAR(100) NOT NULL,
preco DECIMAL(5,2) NOT NULL,
estilo_id INT NOT NULL, 
FOREIGN KEY (artist_id) references artista(artista_id),
FOREIGN KEY (estilo_id) references estilomusical(estilo_id)
)engine=InnoDB;

CREATE TABLE cancao(
cancao_id INT PRIMARY KEY auto_increment,
nome VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) references album(album_id)
)engine=InnoDB;
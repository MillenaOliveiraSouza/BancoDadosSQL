CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
nivel_ensino varchar (255),
serie INT NOT NULL,
sala CHAR (10),
turno VARCHAR (50),
nota DECIMAL (5,2),
PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, nivel_ensino, serie, sala, turno, nota)
VALUES ("Millena", "Ensino Médio", 3, "A", "Manhã", 10.00),
("Isabella", "Ensino Médio", 3, "B", "Manhã", 9.75),
("Andressa", "Ensino Fundamental", 8, "B", "Manhã", 5.00),
("Silvana", "Ensino Fundamental", 9, "A", "Tarde", 8.50),
("Sergio", "Ensino Fundamental", 9, "A", "Tarde", 7.50),
("Amanda", "Ensino Médio", 1, "A", "Manhã", 8.00),
("Taiany", "Ensino Médio", 2, "B", "Tarde", 9.00),
("Any", "Ensino Fundamental", 2, "A", "Manhã", 4.5);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunoS SET nota = 5.00 WHERE id = 8;
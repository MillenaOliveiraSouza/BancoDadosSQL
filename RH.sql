CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR (255) NOT NULL,
salario DECIMAL (10,2),
data_contratacao DATE,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, data_contratacao)
VALUES ("Millena", "Desenvolvedora Junior", 2000.00, "2024-05-01"),
("Silvana", "Financeiro", 4000.00, "2015-04-05"),
("Isabella", "Assistente Administrativo", 1700.00, "2022-10-23"),
("Andressa", "Gerente de Projetos", 12000.00, "2014-02-20"),
("Sergio", "Database Administrator", 14885.00, "2017-06-12");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2200.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET cargo = "Analista", salario = 2435.00 WHERE id = 3;

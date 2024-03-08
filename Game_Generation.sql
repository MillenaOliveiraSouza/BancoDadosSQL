CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id_classe BIGINT AUTO_INCREMENT,
nome_classe VARCHAR (255) NOT NULL,
descricao VARCHAR (255),
PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens(
id_personagem BIGINT AUTO_INCREMENT,
nome_personagem VARCHAR (255),
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
quantidade_vida INT NOT NULL,
id_classe BIGINT,
PRIMARY KEY (id_personagem),
FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_classes (nome_classe, descricao)
VALUES ("Tribo do Ar", "São ágeis e versáteis, cacapazes de evadir ataques com facilidade enquanto lançam seus proprios ataques precisos e rápidos."),
("Tribo da Água","São adaptáveis e fluidos, capazes de se adaptar a qualquer situação até mesmo se transformar os seus ataques de água e gelo"),
("Tribo do Fogo", "São capazes de incendiar campos de batalha com sua energia e lançar raios para atacar."),
("Tribo da Terra", "São fortes capazes de resistir a ataques enquanto lançam pedras para atacar o seu oponente"),
("Tribo do Metal", "São capazes de usar o metal para criar ferramentas de ataque e defesa");

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, quantidade_vida, id_classe)
VALUES ("Aang", 6000,7000, 5, 1),
("Katara",9000,5000, 4, 2),
("Toph", 9000,2000, 3, 4),
("Zuko", 2000,1000, 4, 3),
("Sokka", 700, 1000, 2, 5),
("Iroh", 4000, 4500, 1, 3),
("Appa", 2500, 500, 2, 1),
("Momo", 200, 100, 0, 1);

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%c%';

SELECT tb_personagens.*, tb_classes.nome_classe 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT tb_personagens.*, tb_classes.nome_classe 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome_classe = "Tribo da Terra";



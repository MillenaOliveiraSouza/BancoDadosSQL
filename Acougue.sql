CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes; 

CREATE TABLE tb_categorias(
id_categoria BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(255) NOT NULL,
descricao varchar(255),
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produtos(
id_produto BIGINT AUTO_INCREMENT, 
nome_produto VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
preco DECIMAL(6,2) NOT NULL,
id_categoria BIGINT,
PRIMARY KEY (id_produto),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria) 
);

INSERT INTO tb_categorias(nome_categoria, descricao) 
VALUES ("Frutas", "Variedade fresca de frutas maduras e suculentas."),
("Legumes", "Diversidade de vegetais frescos e nutritivos."),
("Carnes", "Seleção de carnes frescas e saborosas."),
("Aves", "Variedade de aves frescas para refeições deliciosas."),
("Laticínios", "Produtos lácteos frescos e saborosos.");

INSERT INTO tb_produtos(nome_produto, descricao, preco, id_categoria) 
VALUES ("Maçã Fuji", "Maçã suculenta e doce, ótima para lanches.", 2.99, 1),
("Cenoura Orgânica", "Cenouras frescas e suculentas, ideais para saladas.", 3.49, 2),
("Bife de Alcatra", "Bifes de alcatra macios e suculentos, ideais para grelhados e churrascos.", 65.00, 3),
("Filé de Frango", "Filés de frango frescos e macios, perfeitos para grelhados.", 9.99, 4),
("Queijo Minas Frescal", "Queijo fresco e cremoso, excelente para sanduíches e saladas.", 12.99, 5),
("Abacate Hass", "Abacate cremoso e rico em gorduras saudáveis, ótimo para guacamole.", 4.99, 1),
("Tomate Italiano", "Tomates vermelhos e suculentos, perfeitos para saladas e molhos.", 3.99, 2),
("Iogurte Natural Integral", "Iogurte cremoso e rico em probióticos, excelente para o café da manhã.", 2.49, 5);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT tb_produtos.nome_produto, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.nome_produto, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Frutas";
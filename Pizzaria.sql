CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_categorias(
id_categoria BIGINT AUTO_INCREMENT,
tamanho VARCHAR (255),
tipo VARCHAR (255),
PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizzas(
id_pizzas BIGINT AUTO_INCREMENT,
nome_sabor VARCHAR (255),
preco DECIMAL (5,2), 
ingredientes_principais TEXT,
borda VARCHAR (255),
id_categoria BIGINT,
PRIMARY KEY (id_pizzas),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (tamanho, tipo)
VALUES ("Pequena", "Doce"),
("Pequena", "Salgada"),
("Media", "Doce"),
("Média","Salgada"),
("Grande", "Doce"),
("Grande", "Salgada");

INSERT INTO tb_pizzas (nome_sabor, preco, ingredientes_principais, borda, id_categoria)
VALUES ("Margherita", 64.00,"Molho de Tomate, Muçarela, Manjerição Fresco, Azeite de Oliva", "catupiry", 4),
("Pepperoni", 64.00,"Molho de Tomate, Muçarela, Pepperoni"," ",4),
("Vegetariana", 74.00,"Molho de Tomate, Muçarela, Pimentão, Cebola, Champignon, Tomate, Azeitonas, Milho"," ",6 ),
("Calabresa", 50.00,"Molho de Tomate, Cebola Fatiada, Muçarela, Calabresa Fatiada", "catupiry", 2),
("Frango com Catupiry", 74.00,"Molho de Tomate, Frango Desfiado, Catupiry", "catupiry", 6),
("Quatro Queijos", 50.00,"Molho de Tomate, Muçarela, Parmesão, Gorgonzola, Provolone", " ", 2),
("Portuguesa", 74.00,"Molho de Tomate, Presunto, Muçarela, Ovo, Cebola, Pimentão, Azeitonas", "catupiry", 6),
("Chocolate com Morangos", 42.00,"Creme de Avelã, Morango Fresco"," ", 1);

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_sabor LIKE '%m%';

SELECT tb_pizzas.*, tb_categorias.tipo 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT tb_pizzas.id_pizzas,tb_pizzas.nome_sabor,tb_pizzas.preco, tb_pizzas.ingredientes_principais,tb_pizzas.borda, tb_categorias.tamanho, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.tipo = "Doce";

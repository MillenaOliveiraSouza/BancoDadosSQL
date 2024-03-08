CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar; 

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
VALUES ("Remédios", "Medicamentos para tratamento de diversas condições de saúde."),
("Higiene Pessoal", "Produtos para higiee diária."),
("Cosméticos", "Produtos para cuidados com a pele, cabelo e beleza."),
("Perfumes", "Fragrâncias e produtos de perfumaria para uso pessoal."),
("Produtos Naturais", "Produtos feitos com ingredientes naturais e orgânicos, sem aditivos químicos.");

INSERT INTO tb_produtos(nome_produto, descricao, preco, id_categoria) 
VALUES ("Shampoo Clear", "Anticaspa, fortalece os fios.", 12.99, 2),
("Dipirona 500mg", "Analgésico e antitérmico.", 6.99, 1),
("Máscara de Cílios Maybelline", "Volume intenso em uma única aplicação.", 26.99, 3),
("Creme Dental Oral-B", "Proteção total para dentes e gengivas.", 5.49, 2),
("Perfume Malbec Sport", "Fragrância amadeirada fresca masculina.", 89.90, 4),
("Óleo de Coco Extra Virgem", "Versátil e nutritivo para cozinha e cuidados pessoais.", 29.99, 5),
("Paracetamol 750mg", "Alívio eficaz da dor e febre.",  9.99, 1),
("Base Líquida Avon Color Trend", "Cobertura leve e natural.", 18.99, 3);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT tb_produtos.nome_produto, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.nome_produto, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Cosméticos";


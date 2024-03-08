CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas; 

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
VALUES ("Hidráulica", "Materiais e acessórios para instalações hidráulicas, como tubos, conexões e registros."),
("Elétrica", "Equipamentos e componentes elétricos para instalações e reparos, como fios, disjuntores e luminárias."),
("Ferragens", "Diversidade de ferramentas e utensílios para construção e reparos, como martelos, pregos e parafusos."),
("Acabamentos", "Produtos para finalização e decoração de ambientes, como tintas, revestimentos e pisos."),
("Madeira", "Variedade de madeiras e derivados para construção e acabamento, como tábuas, compensados e vigas.");

INSERT INTO tb_produtos(nome_produto, descricao, preco, id_categoria) 
VALUES ("Válvula de Descarga", "Válvula eficiente para descarga de banheiros e lavabos.", 24.99, 1),
("Lâmpada LED 12W", " Lâmpada econômica de LED para iluminação residencial.", 8.99, 2),
("Conjunto de Parafusos e Buchas", "Kit completo de parafusos e buchas para fixação de objetos.", 6.49, 3),
("Tinta Acrílica Premium 18 Litros", "Tinta de alta qualidade para pintura interna e externa.", 129.99, 4),
("Tábua de Pinus", "Tábua de pinus resistente e versátil para construção e acabamento.", 18.99, 5),
("Chuveiro Elétrico Advanced Turbo 220V", "Chuveiro elétrico com tecnologia avançada de aquecimento e jatos de alta pressão.", 159.99, 1),
("Fio Elétrico Flexível 2,5mm", "Fio elétrico resistente e flexível para instalações internas.", 2.49, 2),
("Chave de Fenda Phillips", "Chave de fenda prática e durável para montagens e reparos.", 3.99, 3);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT tb_produtos.nome_produto, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.nome_produto, tb_produtos.descricao, tb_produtos.preco, tb_categorias.nome_categoria 
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = "Hidráulica";